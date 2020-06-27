.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0090\u0001B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0000H\u0016J\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u0000H\u0016J\u0008\u0010\u0014\u001a\u00020\u0012H\u0016J\u0006\u0010\u0015\u001a\u00020\u000cJ\u0006\u0010\u0016\u001a\u00020\u0000J$\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000cH\u0007J\u0018\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000cJ \u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000cJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0008\u0010 \u001a\u00020\u0000H\u0016J\u0008\u0010!\u001a\u00020\u0000H\u0016J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\u0008\u0010&\u001a\u00020#H\u0016J\u0008\u0010\'\u001a\u00020\u0012H\u0016J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000cH\u0087\u0002\u00a2\u0006\u0002\u0008+J\u0015\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008-J\u0008\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u001dH\u0002J\u000e\u00102\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00103\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00104\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0010\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)H\u0016J\u0018\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\u000cH\u0016J \u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\u000c2\u0006\u00108\u001a\u00020\u000cH\u0016J\u0010\u00105\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001dH\u0016J\u0018\u00105\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\u000cH\u0016J\u0010\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u001dH\u0016J\u0018\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\u000cH\u0016J\u0008\u0010<\u001a\u00020=H\u0016J\u0008\u0010>\u001a\u00020#H\u0016J\u0006\u0010?\u001a\u00020\u001dJ\u0008\u0010@\u001a\u00020\u0019H\u0016J\u0008\u0010A\u001a\u00020\u0001H\u0016J\u0018\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001dH\u0016J(\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020GH\u0016J \u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010D\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010H\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u00020K2\u0008\u0008\u0002\u0010L\u001a\u00020KH\u0007J\u0008\u0010M\u001a\u00020)H\u0016J\u0008\u0010N\u001a\u00020GH\u0016J\u0010\u0010N\u001a\u00020G2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010O\u001a\u00020\u001dH\u0016J\u0010\u0010O\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010P\u001a\u00020\u000cH\u0016J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=J\u0016\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\u000cJ \u0010Q\u001a\u00020\u00122\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010S\u001a\u00020#H\u0002J\u0010\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020GH\u0016J\u0018\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010U\u001a\u00020\u000cH\u0016J\u0008\u0010V\u001a\u00020/H\u0016J\u0008\u0010W\u001a\u00020/H\u0016J\u0008\u0010X\u001a\u00020\u000cH\u0016J\u0008\u0010Y\u001a\u00020\u000cH\u0016J\u0008\u0010Z\u001a\u00020[H\u0016J\u0008\u0010\\\u001a\u00020[H\u0016J\u0010\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J\u0018\u0010]\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010^\u001a\u00020_H\u0016J\u0012\u0010`\u001a\u00020K2\u0008\u0008\u0002\u0010L\u001a\u00020KH\u0007J\u0008\u0010a\u001a\u00020\u001fH\u0016J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010b\u001a\u00020/H\u0016J\n\u0010c\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010d\u001a\u00020\u001fH\u0016J\u0010\u0010d\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u000cH\u0016J\u0010\u0010f\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010g\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00020jH\u0016J\u0006\u0010k\u001a\u00020\u001dJ\u0006\u0010l\u001a\u00020\u001dJ\u0006\u0010m\u001a\u00020\u001dJ\r\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008nJ\u0010\u0010o\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0006\u0010p\u001a\u00020\u001dJ\u000e\u0010p\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020/J\u0008\u0010q\u001a\u00020rH\u0016J\u0008\u0010s\u001a\u00020\u001fH\u0016J\u0015\u0010t\u001a\u00020\n2\u0006\u0010u\u001a\u00020/H\u0000\u00a2\u0006\u0002\u0008vJ\u0010\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020FH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020GH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00122\u0006\u0010x\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001dH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020z2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010{\u001a\u00020\u000c2\u0006\u0010x\u001a\u00020zH\u0016J\u0010\u0010|\u001a\u00020\u00002\u0006\u00106\u001a\u00020/H\u0016J\u0010\u0010}\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0010\u0010\u007f\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0012\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0082\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0011\u0010\u0083\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0011\u0010\u0084\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u001a\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J,\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/2\u0006\u0010^\u001a\u00020_H\u0016J\u001b\u0010\u008c\u0001\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000cH\u0007J\u0012\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001fH\u0016J$\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/H\u0016J\u0012\u0010\u008e\u0001\u001a\u00020\u00002\u0007\u0010\u008f\u0001\u001a\u00020/H\u0016R\u0014\u0010\u0006\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8G@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0091\u0001"
    }
    d2 = {
        "Lokio/Buffer;",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSink;",
        "",
        "Ljava/nio/channels/ByteChannel;",
        "()V",
        "buffer",
        "getBuffer",
        "()Lokio/Buffer;",
        "head",
        "Lokio/Segment;",
        "<set-?>",
        "",
        "size",
        "()J",
        "setSize$okio",
        "(J)V",
        "clear",
        "",
        "clone",
        "close",
        "completeSegmentByteCount",
        "copy",
        "copyTo",
        "out",
        "Ljava/io/OutputStream;",
        "offset",
        "byteCount",
        "digest",
        "Lokio/ByteString;",
        "algorithm",
        "",
        "emit",
        "emitCompleteSegments",
        "equals",
        "",
        "other",
        "",
        "exhausted",
        "flush",
        "get",
        "",
        "pos",
        "getByte",
        "index",
        "-deprecated_getByte",
        "hashCode",
        "",
        "hmac",
        "key",
        "hmacSha1",
        "hmacSha256",
        "hmacSha512",
        "indexOf",
        "b",
        "fromIndex",
        "toIndex",
        "bytes",
        "indexOfElement",
        "targetBytes",
        "inputStream",
        "Ljava/io/InputStream;",
        "isOpen",
        "md5",
        "outputStream",
        "peek",
        "rangeEquals",
        "bytesOffset",
        "read",
        "sink",
        "Ljava/nio/ByteBuffer;",
        "",
        "readAll",
        "Lokio/Sink;",
        "readAndWriteUnsafe",
        "Lokio/Buffer$UnsafeCursor;",
        "unsafeCursor",
        "readByte",
        "readByteArray",
        "readByteString",
        "readDecimalLong",
        "readFrom",
        "input",
        "forever",
        "readFully",
        "readHexadecimalUnsignedLong",
        "readInt",
        "readIntLe",
        "readLong",
        "readLongLe",
        "readShort",
        "",
        "readShortLe",
        "readString",
        "charset",
        "Ljava/nio/charset/Charset;",
        "readUnsafe",
        "readUtf8",
        "readUtf8CodePoint",
        "readUtf8Line",
        "readUtf8LineStrict",
        "limit",
        "request",
        "require",
        "select",
        "options",
        "Lokio/Options;",
        "sha1",
        "sha256",
        "sha512",
        "-deprecated_size",
        "skip",
        "snapshot",
        "timeout",
        "Lokio/Timeout;",
        "toString",
        "writableSegment",
        "minimumCapacity",
        "writableSegment$okio",
        "write",
        "source",
        "byteString",
        "Lokio/Source;",
        "writeAll",
        "writeByte",
        "writeDecimalLong",
        "v",
        "writeHexadecimalUnsignedLong",
        "writeInt",
        "i",
        "writeIntLe",
        "writeLong",
        "writeLongLe",
        "writeShort",
        "s",
        "writeShortLe",
        "writeString",
        "string",
        "beginIndex",
        "endIndex",
        "writeTo",
        "writeUtf8",
        "writeUtf8CodePoint",
        "codePoint",
        "UnsafeCursor",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public head:Lokio/Segment;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move v8, v6

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_0

    .line 142
    const-wide/16 v8, 0x0

    move-wide v2, v8

    :cond_0
    move v8, v6

    const/4 v9, 0x4

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_1

    .line 143
    move-object v8, v0

    iget-wide v8, v8, Lokio/Buffer;->size:J

    move-wide v10, v2

    sub-long/2addr v8, v10

    move-wide v4, v8

    :cond_1
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-virtual/range {v8 .. v13}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JILjava/lang/Object;)Lokio/Buffer;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move v6, v4

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x0

    move-wide v2, v6

    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->copyTo(Lokio/Buffer;J)Lokio/Buffer;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move v8, v6

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x0

    move-wide v2, v8

    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-virtual/range {v8 .. v13}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method private final digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 15

    .prologue
    .line 510
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v9, v1

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    move-object v2, v9

    .line 511
    move-object v9, v0

    iget-object v9, v9, Lokio/Buffer;->head:Lokio/Segment;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    if-eqz v10, :cond_3

    move-object v3, v9

    const/4 v9, 0x0

    move v4, v9

    const/4 v9, 0x0

    move v5, v9

    move-object v9, v3

    move-object v6, v9

    const/4 v9, 0x0

    move v7, v9

    .line 512
    move-object v9, v2

    move-object v10, v6

    iget-object v10, v10, Lokio/Segment;->data:[B

    move-object v11, v6

    iget v11, v11, Lokio/Segment;->pos:I

    move-object v12, v6

    iget v12, v12, Lokio/Segment;->limit:I

    move-object v13, v6

    iget v13, v13, Lokio/Segment;->pos:I

    sub-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Ljava/security/MessageDigest;->update([BII)V

    .line 513
    move-object v9, v6

    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    if-nez v10, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v8, v9

    .line 514
    :goto_0
    move-object v9, v8

    move-object v10, v6

    if-eq v9, v10, :cond_2

    .line 515
    move-object v9, v2

    move-object v10, v8

    iget-object v10, v10, Lokio/Segment;->data:[B

    move-object v11, v8

    iget v11, v11, Lokio/Segment;->pos:I

    move-object v12, v8

    iget v12, v12, Lokio/Segment;->limit:I

    move-object v13, v8

    iget v13, v13, Lokio/Segment;->pos:I

    sub-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Ljava/security/MessageDigest;->update([BII)V

    .line 516
    move-object v9, v8

    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    if-nez v10, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v8, v9

    .line 514
    goto :goto_0

    .line 518
    :cond_2
    nop

    nop

    .line 519
    :goto_1
    new-instance v9, Lokio/ByteString;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    const-string v13, "messageDigest.digest()"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lokio/ByteString;-><init>([B)V

    move-object v0, v9

    return-object v0

    :cond_3
    goto :goto_1
.end method

.method private final hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 16

    .prologue
    .line 532
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    nop

    .line 533
    move-object v10, v1

    :try_start_0
    invoke-static {v10}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v10

    move-object v3, v10

    .line 534
    move-object v10, v3

    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v2

    invoke-virtual {v13}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v13

    move-object v14, v1

    invoke-direct {v12, v13, v14}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v11, Ljava/security/Key;

    invoke-virtual {v10, v11}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 535
    move-object v10, v0

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    if-eqz v11, :cond_3

    move-object v4, v10

    const/4 v10, 0x0

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    move-object v10, v4

    move-object v7, v10

    const/4 v10, 0x0

    move v8, v10

    .line 536
    move-object v10, v3

    move-object v11, v7

    iget-object v11, v11, Lokio/Segment;->data:[B

    move-object v12, v7

    iget v12, v12, Lokio/Segment;->pos:I

    move-object v13, v7

    iget v13, v13, Lokio/Segment;->limit:I

    move-object v14, v7

    iget v14, v14, Lokio/Segment;->pos:I

    sub-int/2addr v13, v14

    invoke-virtual {v10, v11, v12, v13}, Ljavax/crypto/Mac;->update([BII)V

    .line 537
    move-object v10, v7

    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    if-nez v11, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object v9, v10

    .line 538
    :goto_0
    move-object v10, v9

    move-object v11, v7

    if-eq v10, v11, :cond_2

    .line 539
    move-object v10, v3

    move-object v11, v9

    iget-object v11, v11, Lokio/Segment;->data:[B

    move-object v12, v9

    iget v12, v12, Lokio/Segment;->pos:I

    move-object v13, v9

    iget v13, v13, Lokio/Segment;->limit:I

    move-object v14, v9

    iget v14, v14, Lokio/Segment;->pos:I

    sub-int/2addr v13, v14

    invoke-virtual {v10, v11, v12, v13}, Ljavax/crypto/Mac;->update([BII)V

    .line 540
    move-object v10, v9

    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    if-nez v11, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v9, v10

    .line 538
    goto :goto_0

    .line 542
    :cond_2
    nop

    nop

    .line 543
    :goto_1
    new-instance v10, Lokio/ByteString;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    invoke-virtual {v12}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v12

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-string v14, "mac.doFinal()"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v10

    return-object v0

    :cond_3
    goto :goto_1

    .line 544
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 545
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    check-cast v12, Ljava/lang/Throwable;

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10
.end method

.method public static synthetic readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 577
    new-instance v4, Lokio/Buffer$UnsafeCursor;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lokio/Buffer$UnsafeCursor;-><init>()V

    move-object v1, v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private final readFrom(Ljava/io/InputStream;JZ)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-wide/from16 v17, v5

    move-wide/from16 v8, v17

    .line 226
    :goto_0
    move-wide/from16 v17, v8

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-gtz v17, :cond_0

    move/from16 v17, v7

    if-eqz v17, :cond_4

    .line 227
    :cond_0
    move-object/from16 v17, v3

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v17

    move-object/from16 v10, v17

    .line 228
    const/16 v17, 0x2000

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v18, v0

    move/from16 v0, v18

    rsub-int v0, v0, 0x2000

    move/from16 v17, v0

    move/from16 v12, v17

    const/16 v17, 0x0

    move/from16 v13, v17

    .line 1054
    move/from16 v17, v12

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v14, v17

    const/16 v17, 0x0

    move/from16 v16, v17

    move-wide/from16 v17, v8

    move-wide/from16 v19, v14

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    nop

    .line 228
    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v11, v17

    .line 229
    move-object/from16 v17, v4

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v18, v0

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v19, v0

    move/from16 v20, v11

    invoke-virtual/range {v17 .. v20}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    move/from16 v12, v17

    .line 230
    move/from16 v17, v12

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 231
    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 233
    move-object/from16 v17, v3

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 234
    move-object/from16 v17, v10

    invoke-static/range {v17 .. v17}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 236
    :cond_1
    move/from16 v17, v7

    if-eqz v17, :cond_2

    .line 243
    :goto_1
    return-void

    .line 237
    :cond_2
    new-instance v17, Ljava/io/EOFException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/io/EOFException;-><init>()V

    check-cast v17, Ljava/lang/Throwable;

    throw v17

    .line 239
    :cond_3
    move-object/from16 v17, v10

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v18, v0

    move/from16 v19, v12

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lokio/Segment;->limit:I

    .line 240
    move-object/from16 v17, v3

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v0, v18

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v18, v0

    move/from16 v20, v12

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lokio/Buffer;->size:J

    .line 241
    move-wide/from16 v17, v8

    move/from16 v19, v12

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-wide/from16 v8, v17

    .line 226
    goto/16 :goto_0

    .line 243
    :cond_4
    goto :goto_1
.end method

.method public static synthetic readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 568
    new-instance v4, Lokio/Buffer$UnsafeCursor;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lokio/Buffer$UnsafeCursor;-><init>()V

    move-object v1, v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static synthetic writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move v6, v4

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 184
    move-object v6, v0

    iget-wide v6, v6, Lokio/Buffer;->size:J

    move-wide v2, v6

    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public final -deprecated_getByte(J)B
    .locals 6
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
    .line 590
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v3

    move v0, v3

    return v0
.end method

.method public final -deprecated_size()J
    .locals 3
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
    .line 597
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokio/Buffer;->size:J

    move-wide v0, v1

    return-wide v0
.end method

.method public buffer()Lokio/Buffer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public final clear()V
    .locals 6

    .prologue
    .line 364
    move-object v0, p0

    move-object v3, v0

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    .line 1471
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 364
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->copy()Lokio/Buffer;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public final completeSegmentByteCount()J
    .locals 11

    .prologue
    .line 245
    move-object v0, p0

    move-object v6, v0

    move-object v1, v6

    const/4 v6, 0x0

    move v2, v6

    .line 1055
    move-object v6, v1

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-wide v3, v6

    .line 1056
    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    .line 245
    :goto_0
    move-wide v0, v6

    return-wide v0

    .line 1059
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    if-nez v7, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    if-nez v7, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-object v5, v6

    .line 1060
    move-object v6, v5

    iget v6, v6, Lokio/Segment;->limit:I

    const/16 v7, 0x2000

    if-ge v6, v7, :cond_3

    move-object v6, v5

    iget-boolean v6, v6, Lokio/Segment;->owner:Z

    if-eqz v6, :cond_3

    .line 1061
    move-wide v6, v3

    move-object v8, v5

    iget v8, v8, Lokio/Segment;->limit:I

    move-object v9, v5

    iget v9, v9, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v6, v8

    move-wide v3, v6

    .line 1064
    :cond_3
    move-wide v6, v3

    goto :goto_0
.end method

.method public final copy()Lokio/Buffer;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 559
    move-object v0, p0

    move-object v7, v0

    move-object v1, v7

    const/4 v7, 0x0

    move v2, v7

    .line 2097
    new-instance v7, Lokio/Buffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    move-object v3, v7

    .line 2098
    move-object v7, v1

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    move-object v7, v3

    .line 559
    :goto_0
    move-object v0, v7

    return-object v0

    .line 2100
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    if-nez v8, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v4, v7

    .line 2101
    move-object v7, v4

    invoke-virtual {v7}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v7

    move-object v5, v7

    .line 2103
    move-object v7, v3

    move-object v8, v5

    iput-object v8, v7, Lokio/Buffer;->head:Lokio/Segment;

    .line 2104
    move-object v7, v5

    move-object v8, v3

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v8, v7, Lokio/Segment;->prev:Lokio/Segment;

    .line 2105
    move-object v7, v5

    move-object v8, v5

    iget-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v8, v7, Lokio/Segment;->next:Lokio/Segment;

    .line 2107
    move-object v7, v4

    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v7

    .line 2108
    :goto_1
    move-object v7, v6

    move-object v8, v4

    if-eq v7, v8, :cond_4

    .line 2109
    move-object v7, v5

    iget-object v7, v7, Lokio/Segment;->prev:Lokio/Segment;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    if-nez v8, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-object v8, v6

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    if-nez v9, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v8}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v7

    .line 2110
    move-object v7, v6

    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    move-object v6, v7

    .line 2108
    goto :goto_1

    .line 2113
    :cond_4
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->setSize$okio(J)V

    .line 2114
    move-object v7, v3

    goto :goto_0
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 10
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 12
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .locals 27
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v20, v3

    const-string v21, "out"

    invoke-static/range {v20 .. v21}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    move-wide/from16 v20, v4

    move-wide/from16 v8, v20

    .line 146
    move-wide/from16 v20, v6

    move-wide/from16 v10, v20

    .line 147
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v20, v0

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    invoke-static/range {v20 .. v25}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 148
    move-wide/from16 v20, v10

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_0

    move-object/from16 v20, v2

    move-object/from16 v2, v20

    .line 167
    :goto_0
    return-object v2

    .line 151
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v20, v0

    move-object/from16 v12, v20

    .line 152
    :goto_1
    move-wide/from16 v20, v8

    move-object/from16 v22, v12

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    if-nez v23, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object/from16 v0, v22

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_2

    .line 153
    move-wide/from16 v20, v8

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v8, v20

    .line 154
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v20, v0

    move-object/from16 v12, v20

    .line 152
    goto :goto_1

    .line 158
    :cond_2
    :goto_2
    move-wide/from16 v20, v10

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_4

    .line 159
    move-object/from16 v20, v12

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    if-nez v21, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v8

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v13, v20

    .line 160
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v20, v0

    move/from16 v21, v13

    sub-int v20, v20, v21

    move/from16 v15, v20

    const/16 v20, 0x0

    move/from16 v16, v20

    .line 1020
    move/from16 v20, v15

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v17, v20

    const/16 v20, 0x0

    move/from16 v19, v20

    move-wide/from16 v20, v17

    move-wide/from16 v22, v10

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    nop

    .line 160
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v14, v20

    .line 161
    move-object/from16 v20, v3

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v21, v0

    move/from16 v22, v13

    move/from16 v23, v14

    invoke-virtual/range {v20 .. v23}, Ljava/io/OutputStream;->write([BII)V

    .line 162
    move-wide/from16 v20, v10

    move/from16 v22, v14

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v10, v20

    .line 163
    const-wide/16 v20, 0x0

    move-wide/from16 v8, v20

    .line 164
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v20, v0

    move-object/from16 v12, v20

    .line 158
    goto/16 :goto_2

    .line 167
    :cond_4
    move-object/from16 v20, v2

    move-object/from16 v2, v20

    goto/16 :goto_0
.end method

.method public final copyTo(Lokio/Buffer;J)Lokio/Buffer;
    .locals 12
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v1

    const-string v5, "out"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v0

    iget-wide v8, v8, Lokio/Buffer;->size:J

    move-wide v10, v2

    sub-long/2addr v8, v10

    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 28
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v21, v3

    const-string v22, "out"

    invoke-static/range {v21 .. v22}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    move-object/from16 v21, v2

    move-object/from16 v8, v21

    const/16 v21, 0x0

    move/from16 v9, v21

    .line 1021
    move-wide/from16 v21, v4

    move-wide/from16 v10, v21

    .line 1022
    move-wide/from16 v21, v6

    move-wide/from16 v12, v21

    .line 1023
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lokio/Buffer;->size()J

    move-result-wide v21

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    invoke-static/range {v21 .. v26}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1024
    move-wide/from16 v21, v12

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_0

    move-object/from16 v21, v8

    .line 174
    :goto_0
    move-object/from16 v2, v21

    return-object v2

    .line 1026
    :cond_0
    move-object/from16 v21, v3

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-virtual/range {v22 .. v22}, Lokio/Buffer;->size()J

    move-result-wide v22

    move-wide/from16 v24, v12

    add-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Lokio/Buffer;->setSize$okio(J)V

    .line 1029
    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v14, v21

    .line 1030
    :goto_1
    move-wide/from16 v21, v10

    move-object/from16 v23, v14

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    if-nez v24, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object/from16 v0, v23

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v23, v0

    move-object/from16 v24, v14

    move-object/from16 v0, v24

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_2

    .line 1031
    move-wide/from16 v21, v10

    move-object/from16 v23, v14

    move-object/from16 v0, v23

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v23, v0

    move-object/from16 v24, v14

    move-object/from16 v0, v24

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    move-wide/from16 v10, v21

    .line 1032
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v14, v21

    .line 1030
    goto :goto_1

    .line 1036
    :cond_2
    :goto_2
    move-wide/from16 v21, v12

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_7

    .line 1037
    move-object/from16 v21, v14

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    if-nez v22, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual/range {v21 .. v21}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v21

    move-object/from16 v15, v21

    .line 1038
    move-object/from16 v21, v15

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    move-object/from16 v0, v22

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v22, v0

    move-wide/from16 v23, v10

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lokio/Segment;->pos:I

    .line 1039
    move-object/from16 v21, v15

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v22, v0

    move-wide/from16 v23, v12

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v16, v22

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move/from16 v17, v22

    move-object/from16 v18, v21

    const/16 v21, 0x0

    move/from16 v19, v21

    move/from16 v21, v16

    move/from16 v22, v17

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v20, v21

    move-object/from16 v21, v18

    move/from16 v22, v20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lokio/Segment;->limit:I

    .line 1040
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 1041
    move-object/from16 v21, v15

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1042
    move-object/from16 v21, v15

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1043
    move-object/from16 v21, v3

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1046
    :goto_3
    move-wide/from16 v21, v12

    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v23, v0

    move-object/from16 v24, v15

    move-object/from16 v0, v24

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    move-wide/from16 v12, v21

    .line 1048
    const-wide/16 v21, 0x0

    move-wide/from16 v10, v21

    .line 1049
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v14, v21

    .line 1036
    goto/16 :goto_2

    .line 1045
    :cond_4
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    if-nez v22, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    if-nez v22, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v21

    goto :goto_3

    .line 1052
    :cond_7
    move-object/from16 v21, v8

    goto/16 :goto_0
.end method

.method public emit()Lokio/Buffer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic emit()Lokio/BufferedSink;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->emit()Lokio/Buffer;

    move-result-object v1

    check-cast v1, Lokio/BufferedSink;

    move-object v0, v1

    return-object v0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v1

    check-cast v1, Lokio/BufferedSink;

    move-object v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 26
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 549
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v21, v2

    move-object/from16 v4, v21

    const/16 v21, 0x0

    move/from16 v5, v21

    .line 2053
    move-object/from16 v21, v4

    move-object/from16 v22, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/16 v21, 0x1

    .line 549
    :goto_0
    move/from16 v2, v21

    return v2

    .line 2054
    :cond_0
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    instance-of v0, v0, Lokio/Buffer;

    move/from16 v21, v0

    if-nez v21, :cond_1

    const/16 v21, 0x0

    goto :goto_0

    .line 2055
    :cond_1
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lokio/Buffer;->size()J

    move-result-wide v21

    move-object/from16 v23, v3

    check-cast v23, Lokio/Buffer;

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-eqz v21, :cond_2

    const/16 v21, 0x0

    goto :goto_0

    .line 2056
    :cond_2
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lokio/Buffer;->size()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_3

    const/16 v21, 0x1

    goto :goto_0

    .line 2058
    :cond_3
    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    if-nez v22, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    move-object/from16 v6, v21

    .line 2059
    move-object/from16 v21, v3

    check-cast v21, Lokio/Buffer;

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    if-nez v22, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move-object/from16 v7, v21

    .line 2060
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v21, v0

    move/from16 v8, v21

    .line 2061
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v21, v0

    move/from16 v9, v21

    .line 2063
    const-wide/16 v21, 0x0

    move-wide/from16 v10, v21

    .line 2064
    const-wide/16 v21, 0x0

    move-wide/from16 v12, v21

    .line 2065
    :goto_1
    move-wide/from16 v21, v10

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-gez v21, :cond_c

    .line 2066
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v21, v0

    move/from16 v22, v8

    sub-int v21, v21, v22

    move/from16 v14, v21

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v21, v0

    move/from16 v22, v9

    sub-int v21, v21, v22

    move/from16 v15, v21

    const/16 v21, 0x0

    move/from16 v16, v21

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v12, v21

    .line 2068
    const-wide/16 v21, 0x0

    move-wide/from16 v17, v21

    move-wide/from16 v21, v12

    move-wide/from16 v19, v21

    :goto_2
    move-wide/from16 v21, v17

    move-wide/from16 v23, v19

    cmp-long v21, v21, v23

    if-gez v21, :cond_7

    .line 2069
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v21, v0

    move/from16 v22, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v21, v21, v22

    move-object/from16 v22, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v22, v0

    move/from16 v23, v9

    add-int/lit8 v9, v9, 0x1

    aget-byte v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    const/16 v21, 0x0

    goto/16 :goto_0

    .line 2068
    :cond_6
    move-wide/from16 v21, v17

    const-wide/16 v23, 0x1

    add-long v21, v21, v23

    move-wide/from16 v17, v21

    goto :goto_2

    .line 2072
    :cond_7
    move/from16 v21, v8

    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 2073
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    if-nez v22, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    move-object/from16 v6, v21

    .line 2074
    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v21, v0

    move/from16 v8, v21

    .line 2077
    :cond_9
    move/from16 v21, v9

    move-object/from16 v22, v7

    move-object/from16 v0, v22

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 2078
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v21, v0

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    if-nez v22, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    move-object/from16 v7, v21

    .line 2079
    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v21, v0

    move/from16 v9, v21

    .line 2081
    :cond_b
    move-wide/from16 v21, v10

    move-wide/from16 v23, v12

    add-long v21, v21, v23

    move-wide/from16 v10, v21

    .line 2065
    goto/16 :goto_1

    .line 2084
    :cond_c
    const/16 v21, 0x1

    goto/16 :goto_0
.end method

.method public exhausted()Z
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public final getByte(J)B
    .locals 30
    .annotation build Lkotlin/jvm/JvmName;
        name = "getByte"
    .end annotation

    .prologue
    .line 251
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v23, v2

    move-object/from16 v5, v23

    const/16 v23, 0x0

    move/from16 v6, v23

    .line 1083
    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v23

    move-wide/from16 v25, v3

    const-wide/16 v27, 0x1

    invoke-static/range {v23 .. v28}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1084
    move-object/from16 v23, v5

    move-object/from16 v7, v23

    const/16 v23, 0x0

    move/from16 v8, v23

    .line 1085
    move-object/from16 v23, v7

    move-object/from16 v0, v23

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v23, v0

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    if-eqz v24, :cond_1

    .line 1086
    move-object/from16 v13, v23

    .line 1087
    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v23

    move-wide/from16 v25, v3

    sub-long v23, v23, v25

    move-wide/from16 v25, v3

    cmp-long v23, v23, v25

    if-gez v23, :cond_4

    .line 1089
    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v23

    move-wide/from16 v14, v23

    .line 1090
    :goto_0
    move-wide/from16 v23, v14

    move-wide/from16 v25, v3

    cmp-long v23, v23, v25

    if-lez v23, :cond_2

    .line 1091
    move-object/from16 v23, v13

    move-object/from16 v0, v23

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v23, v0

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    if-nez v24, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    move-object/from16 v13, v23

    .line 1092
    move-wide/from16 v23, v14

    move-object/from16 v25, v13

    move-object/from16 v0, v25

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v25, v0

    move-object/from16 v26, v13

    move-object/from16 v0, v26

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    move-wide/from16 v14, v23

    .line 1090
    goto :goto_0

    .line 1085
    :cond_1
    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    move-wide/from16 v9, v24

    check-cast v23, Lokio/Segment;

    move-object/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    .line 1086
    move-object/from16 v23, v11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    move-object/from16 v0, v23

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v23, v0

    move-object/from16 v24, v11

    move-object/from16 v0, v24

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v3

    add-long v24, v24, v26

    move-wide/from16 v26, v9

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    aget-byte v23, v23, v24

    .line 251
    :goto_1
    move/from16 v2, v23

    return v2

    .line 1094
    :cond_2
    move-object/from16 v23, v13

    move-wide/from16 v24, v14

    move-wide/from16 v16, v24

    move-object/from16 v18, v23

    const/16 v23, 0x0

    move/from16 v19, v23

    .line 1086
    move-object/from16 v23, v18

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    if-nez v24, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    move-object/from16 v0, v23

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v23, v0

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v3

    add-long v24, v24, v26

    move-wide/from16 v26, v16

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    aget-byte v23, v23, v24

    goto :goto_1

    .line 1097
    :cond_4
    const-wide/16 v23, 0x0

    move-wide/from16 v14, v23

    .line 1098
    :goto_2
    nop

    .line 1099
    move-wide/from16 v23, v14

    move-object/from16 v25, v13

    move-object/from16 v0, v25

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v25, v0

    move-object/from16 v26, v13

    move-object/from16 v0, v26

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    add-long v23, v23, v25

    move-wide/from16 v9, v23

    .line 1100
    move-wide/from16 v23, v9

    move-wide/from16 v25, v3

    cmp-long v23, v23, v25

    if-lez v23, :cond_6

    .line 1104
    move-object/from16 v23, v13

    move-wide/from16 v24, v14

    move-wide/from16 v20, v24

    move-object/from16 v12, v23

    const/16 v23, 0x0

    move/from16 v22, v23

    .line 1086
    move-object/from16 v23, v12

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    if-nez v24, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move-object/from16 v0, v23

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v23, v0

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v3

    add-long v24, v24, v26

    move-wide/from16 v26, v20

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    aget-byte v23, v23, v24

    goto/16 :goto_1

    .line 1101
    :cond_6
    move-object/from16 v23, v13

    move-object/from16 v0, v23

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v23, v0

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    if-nez v24, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    move-object/from16 v13, v23

    .line 1102
    move-wide/from16 v23, v9

    move-wide/from16 v14, v23

    .line 1098
    goto :goto_2
.end method

.method public hashCode()I
    .locals 11

    .prologue
    .line 551
    move-object v0, p0

    move-object v7, v0

    move-object v1, v7

    const/4 v7, 0x0

    move v2, v7

    .line 2085
    move-object v7, v1

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    if-eqz v8, :cond_1

    move-object v3, v7

    .line 2086
    const/4 v7, 0x1

    move v4, v7

    .line 2087
    :cond_0
    move-object v7, v3

    iget v7, v7, Lokio/Segment;->pos:I

    move v5, v7

    .line 2089
    move-object v7, v3

    iget v7, v7, Lokio/Segment;->limit:I

    move v6, v7

    .line 2090
    :goto_0
    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_2

    .line 2091
    const/16 v7, 0x1f

    move v8, v4

    mul-int/2addr v7, v8

    move-object v8, v3

    iget-object v8, v8, Lokio/Segment;->data:[B

    move v9, v5

    aget-byte v8, v8, v9

    add-int/2addr v7, v8

    move v4, v7

    .line 2092
    add-int/lit8 v5, v5, 0x1

    .line 2090
    goto :goto_0

    .line 2085
    :cond_1
    const/4 v7, 0x0

    .line 551
    :goto_1
    move v0, v7

    return v0

    .line 2094
    :cond_2
    move-object v7, v3

    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    if-nez v8, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    move-object v3, v7

    .line 2095
    move-object v7, v3

    move-object v8, v1

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v7, v8, :cond_0

    .line 2096
    move v7, v4

    goto :goto_1
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
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

    .line 523
    move-object v2, v0

    const-string v3, "HmacSHA1"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
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

    .line 526
    move-object v2, v0

    const-string v3, "HmacSHA256"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
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

    .line 529
    move-object v2, v0

    const-string v3, "HmacSHA512"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public indexOf(B)J
    .locals 8

    .prologue
    .line 458
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const-wide/16 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 10

    .prologue
    .line 464
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v4

    move-wide v0, v4

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 61

    .prologue
    .line 466
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v54, v2

    move-object/from16 v8, v54

    const/16 v54, 0x0

    move/from16 v9, v54

    .line 1867
    move-wide/from16 v54, v4

    move-wide/from16 v50, v54

    .line 1868
    move-wide/from16 v54, v6

    move-wide/from16 v52, v54

    .line 1869
    move-wide/from16 v54, v52

    const-wide/16 v56, 0x0

    move-wide/from16 v58, v50

    move-wide/from16 v10, v58

    move-wide/from16 v58, v10

    cmp-long v56, v56, v58

    if-lez v56, :cond_1

    :cond_0
    const/16 v54, 0x0

    :goto_0
    move/from16 v12, v54

    const/16 v54, 0x0

    move/from16 v13, v54

    const/16 v54, 0x0

    move/from16 v14, v54

    move/from16 v54, v12

    if-nez v54, :cond_2

    const/16 v54, 0x0

    move/from16 v15, v54

    new-instance v54, Ljava/lang/StringBuilder;

    move-object/from16 v60, v54

    move-object/from16 v54, v60

    move-object/from16 v55, v60

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "size="

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v55, v8

    invoke-virtual/range {v55 .. v55}, Lokio/Buffer;->size()J

    move-result-wide v55

    invoke-virtual/range {v54 .. v56}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, " fromIndex="

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-wide/from16 v55, v50

    invoke-virtual/range {v54 .. v56}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, " toIndex="

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-wide/from16 v55, v52

    invoke-virtual/range {v54 .. v56}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v14, v54

    new-instance v54, Ljava/lang/IllegalArgumentException;

    move-object/from16 v60, v54

    move-object/from16 v54, v60

    move-object/from16 v55, v60

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v54, Ljava/lang/Throwable;

    throw v54

    :cond_1
    move-wide/from16 v56, v10

    cmp-long v54, v54, v56

    if-ltz v54, :cond_0

    const/16 v54, 0x1

    goto :goto_0

    .line 1871
    :cond_2
    move-wide/from16 v54, v52

    move-object/from16 v56, v8

    invoke-virtual/range {v56 .. v56}, Lokio/Buffer;->size()J

    move-result-wide v56

    cmp-long v54, v54, v56

    if-lez v54, :cond_3

    move-object/from16 v54, v8

    invoke-virtual/range {v54 .. v54}, Lokio/Buffer;->size()J

    move-result-wide v54

    move-wide/from16 v52, v54

    .line 1872
    :cond_3
    move-wide/from16 v54, v50

    move-wide/from16 v56, v52

    cmp-long v54, v54, v56

    if-nez v54, :cond_4

    const-wide/16 v54, -0x1

    .line 466
    :goto_1
    move-wide/from16 v2, v54

    return-wide v2

    .line 1874
    :cond_4
    move-object/from16 v54, v8

    move-object/from16 v12, v54

    move-wide/from16 v54, v50

    move-wide/from16 v16, v54

    const/16 v54, 0x0

    move/from16 v15, v54

    .line 1875
    move-object/from16 v54, v12

    move-object/from16 v0, v54

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v54, v0

    move-object/from16 v60, v54

    move-object/from16 v54, v60

    move-object/from16 v55, v60

    if-eqz v55, :cond_6

    .line 1897
    move-object/from16 v33, v54

    .line 1898
    move-object/from16 v54, v12

    invoke-virtual/range {v54 .. v54}, Lokio/Buffer;->size()J

    move-result-wide v54

    move-wide/from16 v56, v16

    sub-long v54, v54, v56

    move-wide/from16 v56, v16

    cmp-long v54, v54, v56

    if-gez v54, :cond_d

    .line 1900
    move-object/from16 v54, v12

    invoke-virtual/range {v54 .. v54}, Lokio/Buffer;->size()J

    move-result-wide v54

    move-wide/from16 v34, v54

    .line 1901
    :goto_2
    move-wide/from16 v54, v34

    move-wide/from16 v56, v16

    cmp-long v54, v54, v56

    if-lez v54, :cond_7

    .line 1902
    move-object/from16 v54, v33

    move-object/from16 v0, v54

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v54, v0

    move-object/from16 v60, v54

    move-object/from16 v54, v60

    move-object/from16 v55, v60

    if-nez v55, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move-object/from16 v33, v54

    .line 1903
    move-wide/from16 v54, v34

    move-object/from16 v56, v33

    move-object/from16 v0, v56

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v56, v0

    move-object/from16 v57, v33

    move-object/from16 v0, v57

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v57, v0

    sub-int v56, v56, v57

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    sub-long v54, v54, v56

    move-wide/from16 v34, v54

    .line 1901
    goto :goto_2

    .line 1875
    :cond_6
    const/16 v54, 0x0

    const-wide/16 v55, -0x1

    move-wide/from16 v18, v55

    check-cast v54, Lokio/Segment;

    move-object/from16 v20, v54

    const/16 v54, 0x0

    move/from16 v21, v54

    .line 1876
    const-wide/16 v54, -0x1

    goto/16 :goto_1

    .line 1905
    :cond_7
    move-object/from16 v54, v33

    move-wide/from16 v55, v34

    move-wide/from16 v18, v55

    move-object/from16 v20, v54

    const/16 v54, 0x0

    move/from16 v21, v54

    .line 1876
    move-object/from16 v54, v20

    move-object/from16 v60, v54

    move-object/from16 v54, v60

    move-object/from16 v55, v60

    if-eqz v55, :cond_8

    move-object/from16 v22, v54

    .line 1877
    move-wide/from16 v54, v18

    move-wide/from16 v23, v54

    .line 1880
    :goto_3
    move-wide/from16 v54, v23

    move-wide/from16 v56, v52

    cmp-long v54, v54, v56

    if-gez v54, :cond_c

    .line 1881
    move-object/from16 v54, v22

    move-object/from16 v0, v54

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v54, v0

    move-object/from16 v25, v54

    .line 1882
    move-object/from16 v54, v22

    move-object/from16 v0, v54

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v54, v0

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move-wide/from16 v26, v54

    move-object/from16 v54, v22

    move-object/from16 v0, v54

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v54, v0

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move-wide/from16 v56, v52

    add-long v54, v54, v56

    move-wide/from16 v56, v23

    sub-long v54, v54, v56

    move-wide/from16 v28, v54

    const/16 v54, 0x0

    move/from16 v30, v54

    move-wide/from16 v54, v26

    move-wide/from16 v56, v28

    invoke-static/range {v54 .. v57}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v54

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v54, v0

    move/from16 v31, v54

    .line 1883
    move-object/from16 v54, v22

    move-object/from16 v0, v54

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v54, v0

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move-wide/from16 v56, v50

    add-long v54, v54, v56

    move-wide/from16 v56, v23

    sub-long v54, v54, v56

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v54, v0

    move/from16 v32, v54

    .line 1884
    :goto_4
    move/from16 v54, v32

    move/from16 v55, v31

    move/from16 v0, v54

    move/from16 v1, v55

    if-ge v0, v1, :cond_a

    .line 1885
    move-object/from16 v54, v25

    move/from16 v55, v32

    aget-byte v54, v54, v55

    move/from16 v55, v3

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_9

    .line 1886
    move/from16 v54, v32

    move-object/from16 v55, v22

    move-object/from16 v0, v55

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v55, v0

    sub-int v54, v54, v55

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move-wide/from16 v56, v23

    add-long v54, v54, v56

    goto/16 :goto_1

    .line 1876
    :cond_8
    const-wide/16 v54, -0x1

    goto/16 :goto_1

    .line 1888
    :cond_9
    add-int/lit8 v32, v32, 0x1

    .line 1884
    goto :goto_4

    .line 1892
    :cond_a
    move-wide/from16 v54, v23

    move-object/from16 v56, v22

    move-object/from16 v0, v56

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v56, v0

    move-object/from16 v57, v22

    move-object/from16 v0, v57

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v57, v0

    sub-int v56, v56, v57

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v54, v54, v56

    move-wide/from16 v23, v54

    .line 1893
    move-wide/from16 v54, v23

    move-wide/from16 v50, v54

    .line 1894
    move-object/from16 v54, v22

    move-object/from16 v0, v54

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v54, v0

    move-object/from16 v60, v54

    move-object/from16 v54, v60

    move-object/from16 v55, v60

    if-nez v55, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    move-object/from16 v22, v54

    .line 1880
    goto/16 :goto_3

    .line 1897
    :cond_c
    const-wide/16 v54, -0x1

    goto/16 :goto_1

    .line 1908
    :cond_d
    const-wide/16 v54, 0x0

    move-wide/from16 v34, v54

    .line 1909
    :goto_5
    nop

    .line 1910
    move-wide/from16 v54, v34

    move-object/from16 v56, v33

    move-object/from16 v0, v56

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v56, v0

    move-object/from16 v57, v33

    move-object/from16 v0, v57

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v57, v0

    sub-int v56, v56, v57

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v54, v54, v56

    move-wide/from16 v36, v54

    .line 1911
    move-wide/from16 v54, v36

    move-wide/from16 v56, v16

    cmp-long v54, v54, v56

    if-lez v54, :cond_e

    .line 1915
    move-object/from16 v54, v33

    move-wide/from16 v55, v34

    move-wide/from16 v38, v55

    move-object/from16 v40, v54

    const/16 v54, 0x0

    move/from16 v41, v54

    .line 1876
    move-object/from16 v54, v40

    move-object/from16 v60, v54

    move-object/from16 v54, v60

    move-object/from16 v55, v60

    if-eqz v55, :cond_10

    move-object/from16 v42, v54

    .line 1877
    move-wide/from16 v54, v38

    move-wide/from16 v43, v54

    .line 1880
    :goto_6
    move-wide/from16 v54, v43

    move-wide/from16 v56, v52

    cmp-long v54, v54, v56

    if-gez v54, :cond_14

    .line 1881
    move-object/from16 v54, v42

    move-object/from16 v0, v54

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v54, v0

    move-object/from16 v45, v54

    .line 1882
    move-object/from16 v54, v42

    move-object/from16 v0, v54

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v54, v0

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move-wide/from16 v28, v54

    move-object/from16 v54, v42

    move-object/from16 v0, v54

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v54, v0

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move-wide/from16 v56, v52

    add-long v54, v54, v56

    move-wide/from16 v56, v43

    sub-long v54, v54, v56

    move-wide/from16 v46, v54

    const/16 v54, 0x0

    move/from16 v32, v54

    move-wide/from16 v54, v28

    move-wide/from16 v56, v46

    invoke-static/range {v54 .. v57}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v54

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v54, v0

    move/from16 v48, v54

    .line 1883
    move-object/from16 v54, v42

    move-object/from16 v0, v54

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v54, v0

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move-wide/from16 v56, v50

    add-long v54, v54, v56

    move-wide/from16 v56, v43

    sub-long v54, v54, v56

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v54, v0

    move/from16 v49, v54

    .line 1884
    :goto_7
    move/from16 v54, v49

    move/from16 v55, v48

    move/from16 v0, v54

    move/from16 v1, v55

    if-ge v0, v1, :cond_12

    .line 1885
    move-object/from16 v54, v45

    move/from16 v55, v49

    aget-byte v54, v54, v55

    move/from16 v55, v3

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_11

    .line 1886
    move/from16 v54, v49

    move-object/from16 v55, v42

    move-object/from16 v0, v55

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v55, v0

    sub-int v54, v54, v55

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move-wide/from16 v56, v43

    add-long v54, v54, v56

    goto/16 :goto_1

    .line 1912
    :cond_e
    move-object/from16 v54, v33

    move-object/from16 v0, v54

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v54, v0

    move-object/from16 v60, v54

    move-object/from16 v54, v60

    move-object/from16 v55, v60

    if-nez v55, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    move-object/from16 v33, v54

    .line 1913
    move-wide/from16 v54, v36

    move-wide/from16 v34, v54

    .line 1909
    goto/16 :goto_5

    .line 1876
    :cond_10
    const-wide/16 v54, -0x1

    goto/16 :goto_1

    .line 1888
    :cond_11
    add-int/lit8 v49, v49, 0x1

    .line 1884
    goto :goto_7

    .line 1892
    :cond_12
    move-wide/from16 v54, v43

    move-object/from16 v56, v42

    move-object/from16 v0, v56

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v56, v0

    move-object/from16 v57, v42

    move-object/from16 v0, v57

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v57, v0

    sub-int v56, v56, v57

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    add-long v54, v54, v56

    move-wide/from16 v43, v54

    .line 1893
    move-wide/from16 v54, v43

    move-wide/from16 v50, v54

    .line 1894
    move-object/from16 v54, v42

    move-object/from16 v0, v54

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v54, v0

    move-object/from16 v60, v54

    move-object/from16 v54, v60

    move-object/from16 v55, v60

    if-nez v55, :cond_13

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_13
    move-object/from16 v42, v54

    .line 1880
    goto/16 :goto_6

    .line 1897
    :cond_14
    const-wide/16 v54, -0x1

    goto/16 :goto_1
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 6
    .param p1    # Lokio/ByteString;
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

    const-string v3, "bytes"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 69
    .param p1    # Lokio/ByteString;
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

    move-object/from16 v63, v3

    const-string v64, "bytes"

    invoke-static/range {v63 .. v64}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    move-object/from16 v63, v2

    move-object/from16 v6, v63

    const/16 v63, 0x0

    move/from16 v7, v63

    .line 1916
    move-wide/from16 v63, v4

    move-wide/from16 v61, v63

    .line 1917
    move-object/from16 v63, v3

    invoke-virtual/range {v63 .. v63}, Lokio/ByteString;->size()I

    move-result v63

    if-lez v63, :cond_0

    const/16 v63, 0x1

    :goto_0
    move/from16 v8, v63

    const/16 v63, 0x0

    move/from16 v9, v63

    const/16 v63, 0x0

    move/from16 v10, v63

    move/from16 v63, v8

    if-nez v63, :cond_1

    const/16 v63, 0x0

    move/from16 v11, v63

    const-string v63, "bytes is empty"

    move-object/from16 v10, v63

    new-instance v63, Ljava/lang/IllegalArgumentException;

    move-object/from16 v68, v63

    move-object/from16 v63, v68

    move-object/from16 v64, v68

    move-object/from16 v65, v10

    invoke-virtual/range {v65 .. v65}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-direct/range {v64 .. v65}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v63, Ljava/lang/Throwable;

    throw v63

    :cond_0
    const/16 v63, 0x0

    goto :goto_0

    .line 1918
    :cond_1
    move-wide/from16 v63, v61

    const-wide/16 v65, 0x0

    cmp-long v63, v63, v65

    if-ltz v63, :cond_2

    const/16 v63, 0x1

    :goto_1
    move/from16 v8, v63

    const/16 v63, 0x0

    move/from16 v9, v63

    const/16 v63, 0x0

    move/from16 v10, v63

    move/from16 v63, v8

    if-nez v63, :cond_3

    const/16 v63, 0x0

    move/from16 v11, v63

    new-instance v63, Ljava/lang/StringBuilder;

    move-object/from16 v68, v63

    move-object/from16 v63, v68

    move-object/from16 v64, v68

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "fromIndex < 0: "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    move-wide/from16 v64, v61

    invoke-virtual/range {v63 .. v65}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v10, v63

    new-instance v63, Ljava/lang/IllegalArgumentException;

    move-object/from16 v68, v63

    move-object/from16 v63, v68

    move-object/from16 v64, v68

    move-object/from16 v65, v10

    invoke-virtual/range {v65 .. v65}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-direct/range {v64 .. v65}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v63, Ljava/lang/Throwable;

    throw v63

    :cond_2
    const/16 v63, 0x0

    goto :goto_1

    .line 1920
    :cond_3
    move-object/from16 v63, v6

    move-object/from16 v8, v63

    move-wide/from16 v63, v61

    move-wide/from16 v12, v63

    const/16 v63, 0x0

    move/from16 v11, v63

    .line 1921
    move-object/from16 v63, v8

    move-object/from16 v0, v63

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v63, v0

    move-object/from16 v68, v63

    move-object/from16 v63, v68

    move-object/from16 v64, v68

    if-eqz v64, :cond_5

    .line 1948
    move-object/from16 v36, v63

    .line 1949
    move-object/from16 v63, v8

    invoke-virtual/range {v63 .. v63}, Lokio/Buffer;->size()J

    move-result-wide v63

    move-wide/from16 v65, v12

    sub-long v63, v63, v65

    move-wide/from16 v65, v12

    cmp-long v63, v63, v65

    if-gez v63, :cond_c

    .line 1951
    move-object/from16 v63, v8

    invoke-virtual/range {v63 .. v63}, Lokio/Buffer;->size()J

    move-result-wide v63

    move-wide/from16 v37, v63

    .line 1952
    :goto_2
    move-wide/from16 v63, v37

    move-wide/from16 v65, v12

    cmp-long v63, v63, v65

    if-lez v63, :cond_6

    .line 1953
    move-object/from16 v63, v36

    move-object/from16 v0, v63

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v63, v0

    move-object/from16 v68, v63

    move-object/from16 v63, v68

    move-object/from16 v64, v68

    if-nez v64, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    move-object/from16 v36, v63

    .line 1954
    move-wide/from16 v63, v37

    move-object/from16 v65, v36

    move-object/from16 v0, v65

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v65, v0

    move-object/from16 v66, v36

    move-object/from16 v0, v66

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v66, v0

    sub-int v65, v65, v66

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v65, v0

    sub-long v63, v63, v65

    move-wide/from16 v37, v63

    .line 1952
    goto :goto_2

    .line 1921
    :cond_5
    const/16 v63, 0x0

    const-wide/16 v64, -0x1

    move-wide/from16 v14, v64

    check-cast v63, Lokio/Segment;

    move-object/from16 v16, v63

    const/16 v63, 0x0

    move/from16 v17, v63

    .line 1922
    const-wide/16 v63, -0x1

    .line 472
    :goto_3
    move-wide/from16 v2, v63

    return-wide v2

    .line 1956
    :cond_6
    move-object/from16 v63, v36

    move-wide/from16 v64, v37

    move-wide/from16 v14, v64

    move-object/from16 v16, v63

    const/16 v63, 0x0

    move/from16 v17, v63

    .line 1922
    move-object/from16 v63, v16

    move-object/from16 v68, v63

    move-object/from16 v63, v68

    move-object/from16 v64, v68

    if-eqz v64, :cond_7

    move-object/from16 v18, v63

    .line 1923
    move-wide/from16 v63, v14

    move-wide/from16 v19, v63

    .line 1927
    move-object/from16 v63, v3

    invoke-virtual/range {v63 .. v63}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v63

    move-object/from16 v21, v63

    .line 1928
    move-object/from16 v63, v21

    const/16 v64, 0x0

    aget-byte v63, v63, v64

    move/from16 v22, v63

    .line 1929
    move-object/from16 v63, v3

    invoke-virtual/range {v63 .. v63}, Lokio/ByteString;->size()I

    move-result v63

    move/from16 v23, v63

    .line 1930
    move-object/from16 v63, v6

    invoke-virtual/range {v63 .. v63}, Lokio/Buffer;->size()J

    move-result-wide v63

    move/from16 v65, v23

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v65, v0

    sub-long v63, v63, v65

    const-wide/16 v65, 0x1

    add-long v63, v63, v65

    move-wide/from16 v24, v63

    .line 1931
    :goto_4
    move-wide/from16 v63, v19

    move-wide/from16 v65, v24

    cmp-long v63, v63, v65

    if-gez v63, :cond_b

    .line 1933
    move-object/from16 v63, v18

    move-object/from16 v0, v63

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v63, v0

    move-object/from16 v26, v63

    .line 1934
    move-object/from16 v63, v18

    move-object/from16 v0, v63

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v63, v0

    move/from16 v27, v63

    move-object/from16 v63, v18

    move-object/from16 v0, v63

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v63, v0

    move-wide/from16 v65, v24

    add-long v63, v63, v65

    move-wide/from16 v65, v19

    sub-long v63, v63, v65

    move-wide/from16 v28, v63

    const/16 v63, 0x0

    move/from16 v30, v63

    .line 1957
    move/from16 v63, v27

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v63, v0

    move-wide/from16 v31, v63

    const/16 v63, 0x0

    move/from16 v33, v63

    move-wide/from16 v63, v31

    move-wide/from16 v65, v28

    invoke-static/range {v63 .. v66}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v63

    nop

    .line 1934
    move-wide/from16 v0, v63

    long-to-int v0, v0

    move/from16 v63, v0

    move/from16 v34, v63

    .line 1936
    move-object/from16 v63, v18

    move-object/from16 v0, v63

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v63, v0

    move-wide/from16 v65, v61

    add-long v63, v63, v65

    move-wide/from16 v65, v19

    sub-long v63, v63, v65

    move-wide/from16 v0, v63

    long-to-int v0, v0

    move/from16 v63, v0

    move/from16 v27, v63

    move/from16 v63, v34

    move/from16 v35, v63

    :goto_5
    move/from16 v63, v27

    move/from16 v64, v35

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_9

    .line 1937
    move-object/from16 v63, v26

    move/from16 v64, v27

    aget-byte v63, v63, v64

    move/from16 v64, v22

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_8

    move-object/from16 v63, v18

    move/from16 v64, v27

    const/16 v65, 0x1

    add-int/lit8 v64, v64, 0x1

    move-object/from16 v65, v21

    const/16 v66, 0x1

    move/from16 v67, v23

    invoke-static/range {v63 .. v67}, Lokio/internal/BufferKt;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v63

    if-eqz v63, :cond_8

    .line 1938
    move/from16 v63, v27

    move-object/from16 v64, v18

    move-object/from16 v0, v64

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v64, v0

    sub-int v63, v63, v64

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v63, v0

    move-wide/from16 v65, v19

    add-long v63, v63, v65

    goto/16 :goto_3

    .line 1922
    :cond_7
    const-wide/16 v63, -0x1

    goto/16 :goto_3

    .line 1936
    :cond_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 1943
    :cond_9
    move-wide/from16 v63, v19

    move-object/from16 v65, v18

    move-object/from16 v0, v65

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v65, v0

    move-object/from16 v66, v18

    move-object/from16 v0, v66

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v66, v0

    sub-int v65, v65, v66

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v65, v0

    add-long v63, v63, v65

    move-wide/from16 v19, v63

    .line 1944
    move-wide/from16 v63, v19

    move-wide/from16 v61, v63

    .line 1945
    move-object/from16 v63, v18

    move-object/from16 v0, v63

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v63, v0

    move-object/from16 v68, v63

    move-object/from16 v63, v68

    move-object/from16 v64, v68

    if-nez v64, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    move-object/from16 v18, v63

    .line 1931
    goto/16 :goto_4

    .line 1948
    :cond_b
    const-wide/16 v63, -0x1

    goto/16 :goto_3

    .line 1958
    :cond_c
    const-wide/16 v63, 0x0

    move-wide/from16 v37, v63

    .line 1959
    :goto_6
    nop

    .line 1960
    move-wide/from16 v63, v37

    move-object/from16 v65, v36

    move-object/from16 v0, v65

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v65, v0

    move-object/from16 v66, v36

    move-object/from16 v0, v66

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v66, v0

    sub-int v65, v65, v66

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v65, v0

    add-long v63, v63, v65

    move-wide/from16 v39, v63

    .line 1961
    move-wide/from16 v63, v39

    move-wide/from16 v65, v12

    cmp-long v63, v63, v65

    if-lez v63, :cond_d

    .line 1965
    move-object/from16 v63, v36

    move-wide/from16 v64, v37

    move-wide/from16 v41, v64

    move-object/from16 v43, v63

    const/16 v63, 0x0

    move/from16 v44, v63

    .line 1922
    move-object/from16 v63, v43

    move-object/from16 v68, v63

    move-object/from16 v63, v68

    move-object/from16 v64, v68

    if-eqz v64, :cond_f

    move-object/from16 v45, v63

    .line 1923
    move-wide/from16 v63, v41

    move-wide/from16 v46, v63

    .line 1927
    move-object/from16 v63, v3

    invoke-virtual/range {v63 .. v63}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v63

    move-object/from16 v23, v63

    .line 1928
    move-object/from16 v63, v23

    const/16 v64, 0x0

    aget-byte v63, v63, v64

    move/from16 v48, v63

    .line 1929
    move-object/from16 v63, v3

    invoke-virtual/range {v63 .. v63}, Lokio/ByteString;->size()I

    move-result v63

    move/from16 v49, v63

    .line 1930
    move-object/from16 v63, v6

    invoke-virtual/range {v63 .. v63}, Lokio/Buffer;->size()J

    move-result-wide v63

    move/from16 v65, v49

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v65, v0

    sub-long v63, v63, v65

    const-wide/16 v65, 0x1

    add-long v63, v63, v65

    move-wide/from16 v50, v63

    .line 1931
    :goto_7
    move-wide/from16 v63, v46

    move-wide/from16 v65, v50

    cmp-long v63, v63, v65

    if-gez v63, :cond_13

    .line 1933
    move-object/from16 v63, v45

    move-object/from16 v0, v63

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v63, v0

    move-object/from16 v52, v63

    .line 1934
    move-object/from16 v63, v45

    move-object/from16 v0, v63

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v63, v0

    move/from16 v53, v63

    move-object/from16 v63, v45

    move-object/from16 v0, v63

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v63, v0

    move-wide/from16 v65, v50

    add-long v63, v63, v65

    move-wide/from16 v65, v46

    sub-long v63, v63, v65

    move-wide/from16 v54, v63

    const/16 v63, 0x0

    move/from16 v56, v63

    .line 1966
    move/from16 v63, v53

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v63, v0

    move-wide/from16 v57, v63

    const/16 v63, 0x0

    move/from16 v35, v63

    move-wide/from16 v63, v57

    move-wide/from16 v65, v54

    invoke-static/range {v63 .. v66}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v63

    nop

    .line 1934
    move-wide/from16 v0, v63

    long-to-int v0, v0

    move/from16 v63, v0

    move/from16 v59, v63

    .line 1936
    move-object/from16 v63, v45

    move-object/from16 v0, v63

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v63, v0

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v63, v0

    move-wide/from16 v65, v61

    add-long v63, v63, v65

    move-wide/from16 v65, v46

    sub-long v63, v63, v65

    move-wide/from16 v0, v63

    long-to-int v0, v0

    move/from16 v63, v0

    move/from16 v53, v63

    move/from16 v63, v59

    move/from16 v60, v63

    :goto_8
    move/from16 v63, v53

    move/from16 v64, v60

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_11

    .line 1937
    move-object/from16 v63, v52

    move/from16 v64, v53

    aget-byte v63, v63, v64

    move/from16 v64, v48

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_10

    move-object/from16 v63, v45

    move/from16 v64, v53

    const/16 v65, 0x1

    add-int/lit8 v64, v64, 0x1

    move-object/from16 v65, v23

    const/16 v66, 0x1

    move/from16 v67, v49

    invoke-static/range {v63 .. v67}, Lokio/internal/BufferKt;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v63

    if-eqz v63, :cond_10

    .line 1938
    move/from16 v63, v53

    move-object/from16 v64, v45

    move-object/from16 v0, v64

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v64, v0

    sub-int v63, v63, v64

    move/from16 v0, v63

    int-to-long v0, v0

    move-wide/from16 v63, v0

    move-wide/from16 v65, v46

    add-long v63, v63, v65

    goto/16 :goto_3

    .line 1962
    :cond_d
    move-object/from16 v63, v36

    move-object/from16 v0, v63

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v63, v0

    move-object/from16 v68, v63

    move-object/from16 v63, v68

    move-object/from16 v64, v68

    if-nez v64, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    move-object/from16 v36, v63

    .line 1963
    move-wide/from16 v63, v39

    move-wide/from16 v37, v63

    .line 1959
    goto/16 :goto_6

    .line 1922
    :cond_f
    const-wide/16 v63, -0x1

    goto/16 :goto_3

    .line 1936
    :cond_10
    add-int/lit8 v53, v53, 0x1

    goto :goto_8

    .line 1943
    :cond_11
    move-wide/from16 v63, v46

    move-object/from16 v65, v45

    move-object/from16 v0, v65

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v65, v0

    move-object/from16 v66, v45

    move-object/from16 v0, v66

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v66, v0

    sub-int v65, v65, v66

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v65, v0

    add-long v63, v63, v65

    move-wide/from16 v46, v63

    .line 1944
    move-wide/from16 v63, v46

    move-wide/from16 v61, v63

    .line 1945
    move-object/from16 v63, v45

    move-object/from16 v0, v63

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v63, v0

    move-object/from16 v68, v63

    move-object/from16 v63, v68

    move-object/from16 v64, v68

    if-nez v64, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12
    move-object/from16 v45, v63

    .line 1931
    goto/16 :goto_7

    .line 1948
    :cond_13
    const-wide/16 v63, -0x1

    goto/16 :goto_3
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 6
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "targetBytes"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 51
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v46, v3

    const-string v47, "targetBytes"

    invoke-static/range {v46 .. v47}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    move-object/from16 v46, v2

    move-object/from16 v6, v46

    const/16 v46, 0x0

    move/from16 v7, v46

    .line 1967
    move-wide/from16 v46, v4

    move-wide/from16 v44, v46

    .line 1968
    move-wide/from16 v46, v44

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-ltz v46, :cond_0

    const/16 v46, 0x1

    :goto_0
    move/from16 v8, v46

    const/16 v46, 0x0

    move/from16 v9, v46

    const/16 v46, 0x0

    move/from16 v10, v46

    move/from16 v46, v8

    if-nez v46, :cond_1

    const/16 v46, 0x0

    move/from16 v11, v46

    new-instance v46, Ljava/lang/StringBuilder;

    move-object/from16 v50, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v50

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "fromIndex < 0: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-wide/from16 v47, v44

    invoke-virtual/range {v46 .. v48}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v10, v46

    new-instance v46, Ljava/lang/IllegalArgumentException;

    move-object/from16 v50, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v50

    move-object/from16 v48, v10

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v46, Ljava/lang/Throwable;

    throw v46

    :cond_0
    const/16 v46, 0x0

    goto :goto_0

    .line 1970
    :cond_1
    move-object/from16 v46, v6

    move-object/from16 v8, v46

    move-wide/from16 v46, v44

    move-wide/from16 v12, v46

    const/16 v46, 0x0

    move/from16 v11, v46

    .line 1971
    move-object/from16 v46, v8

    move-object/from16 v0, v46

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v46, v0

    move-object/from16 v50, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v50

    if-eqz v47, :cond_3

    .line 2019
    move-object/from16 v30, v46

    .line 2022
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Lokio/Buffer;->size()J

    move-result-wide v46

    move-wide/from16 v48, v12

    sub-long v46, v46, v48

    move-wide/from16 v48, v12

    cmp-long v46, v46, v48

    if-gez v46, :cond_10

    .line 2024
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Lokio/Buffer;->size()J

    move-result-wide v46

    move-wide/from16 v31, v46

    .line 2025
    :goto_1
    move-wide/from16 v46, v31

    move-wide/from16 v48, v12

    cmp-long v46, v46, v48

    if-lez v46, :cond_4

    .line 2026
    move-object/from16 v46, v30

    move-object/from16 v0, v46

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v46, v0

    move-object/from16 v50, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v50

    if-nez v47, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-object/from16 v30, v46

    .line 2027
    move-wide/from16 v46, v31

    move-object/from16 v48, v30

    move-object/from16 v0, v48

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v48, v0

    move-object/from16 v49, v30

    move-object/from16 v0, v49

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v49, v0

    sub-int v48, v48, v49

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    sub-long v46, v46, v48

    move-wide/from16 v31, v46

    .line 2025
    goto :goto_1

    .line 1971
    :cond_3
    const/16 v46, 0x0

    const-wide/16 v47, -0x1

    move-wide/from16 v14, v47

    check-cast v46, Lokio/Segment;

    move-object/from16 v16, v46

    const/16 v46, 0x0

    move/from16 v17, v46

    .line 1972
    move-object/from16 v46, v16

    const-wide/16 v46, -0x1

    .line 477
    :goto_2
    move-wide/from16 v2, v46

    return-wide v2

    .line 2029
    :cond_4
    move-object/from16 v46, v30

    move-wide/from16 v47, v31

    move-wide/from16 v14, v47

    move-object/from16 v16, v46

    const/16 v46, 0x0

    move/from16 v17, v46

    .line 1972
    move-object/from16 v46, v16

    move-object/from16 v50, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v50

    if-eqz v47, :cond_6

    move-object/from16 v18, v46

    .line 1973
    move-wide/from16 v46, v14

    move-wide/from16 v19, v46

    .line 1978
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lokio/ByteString;->size()I

    move-result v46

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_a

    .line 1980
    move-object/from16 v46, v3

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lokio/ByteString;->getByte(I)B

    move-result v46

    move/from16 v21, v46

    .line 1981
    move-object/from16 v46, v3

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lokio/ByteString;->getByte(I)B

    move-result v46

    move/from16 v22, v46

    .line 1982
    :goto_3
    move-wide/from16 v46, v19

    move-object/from16 v48, v6

    invoke-virtual/range {v48 .. v48}, Lokio/Buffer;->size()J

    move-result-wide v48

    cmp-long v46, v46, v48

    if-gez v46, :cond_f

    .line 1983
    move-object/from16 v46, v18

    move-object/from16 v0, v46

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v46, v0

    move-object/from16 v23, v46

    .line 1984
    move-object/from16 v46, v18

    move-object/from16 v0, v46

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v44

    add-long v46, v46, v48

    move-wide/from16 v48, v19

    sub-long v46, v46, v48

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v24, v46

    .line 1985
    move-object/from16 v46, v18

    move-object/from16 v0, v46

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v46, v0

    move/from16 v25, v46

    .line 1986
    :goto_4
    move/from16 v46, v24

    move/from16 v47, v25

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_8

    .line 1987
    move-object/from16 v46, v23

    move/from16 v47, v24

    aget-byte v46, v46, v47

    move/from16 v26, v46

    .line 1988
    move/from16 v46, v26

    move/from16 v47, v21

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_5

    move/from16 v46, v26

    move/from16 v47, v22

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_7

    .line 1989
    :cond_5
    move/from16 v46, v24

    move-object/from16 v47, v18

    move-object/from16 v0, v47

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v19

    add-long v46, v46, v48

    goto/16 :goto_2

    .line 1972
    :cond_6
    const-wide/16 v46, -0x1

    goto/16 :goto_2

    .line 1991
    :cond_7
    add-int/lit8 v24, v24, 0x1

    .line 1986
    goto :goto_4

    .line 1995
    :cond_8
    move-wide/from16 v46, v19

    move-object/from16 v48, v18

    move-object/from16 v0, v48

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v48, v0

    move-object/from16 v49, v18

    move-object/from16 v0, v49

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v49, v0

    sub-int v48, v48, v49

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    move-wide/from16 v19, v46

    .line 1996
    move-wide/from16 v46, v19

    move-wide/from16 v44, v46

    .line 1997
    move-object/from16 v46, v18

    move-object/from16 v0, v46

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v46, v0

    move-object/from16 v50, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v50

    if-nez v47, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    move-object/from16 v18, v46

    .line 1982
    goto/16 :goto_3

    .line 2001
    :cond_a
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v46

    move-object/from16 v21, v46

    .line 2002
    :goto_5
    move-wide/from16 v46, v19

    move-object/from16 v48, v6

    invoke-virtual/range {v48 .. v48}, Lokio/Buffer;->size()J

    move-result-wide v48

    cmp-long v46, v46, v48

    if-gez v46, :cond_f

    .line 2003
    move-object/from16 v46, v18

    move-object/from16 v0, v46

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v46, v0

    move-object/from16 v22, v46

    .line 2004
    move-object/from16 v46, v18

    move-object/from16 v0, v46

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v44

    add-long v46, v46, v48

    move-wide/from16 v48, v19

    sub-long v46, v46, v48

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v23, v46

    .line 2005
    move-object/from16 v46, v18

    move-object/from16 v0, v46

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v46, v0

    move/from16 v24, v46

    .line 2006
    :goto_6
    move/from16 v46, v23

    move/from16 v47, v24

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_d

    .line 2007
    move-object/from16 v46, v22

    move/from16 v47, v23

    aget-byte v46, v46, v47

    move/from16 v25, v46

    .line 2008
    move-object/from16 v46, v21

    move-object/from16 v27, v46

    move-object/from16 v46, v27

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v28, v46

    const/16 v46, 0x0

    move/from16 v29, v46

    :goto_7
    move/from16 v46, v29

    move/from16 v47, v28

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_c

    move-object/from16 v46, v27

    move/from16 v47, v29

    aget-byte v46, v46, v47

    move/from16 v26, v46

    .line 2009
    move/from16 v46, v25

    move/from16 v47, v26

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_b

    move/from16 v46, v23

    move-object/from16 v47, v18

    move-object/from16 v0, v47

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v19

    add-long v46, v46, v48

    goto/16 :goto_2

    .line 2008
    :cond_b
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 2011
    :cond_c
    add-int/lit8 v23, v23, 0x1

    .line 2006
    goto :goto_6

    .line 2015
    :cond_d
    move-wide/from16 v46, v19

    move-object/from16 v48, v18

    move-object/from16 v0, v48

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v48, v0

    move-object/from16 v49, v18

    move-object/from16 v0, v49

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v49, v0

    sub-int v48, v48, v49

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    move-wide/from16 v19, v46

    .line 2016
    move-wide/from16 v46, v19

    move-wide/from16 v44, v46

    .line 2017
    move-object/from16 v46, v18

    move-object/from16 v0, v46

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v46, v0

    move-object/from16 v50, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v50

    if-nez v47, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    move-object/from16 v18, v46

    .line 2002
    goto/16 :goto_5

    .line 2019
    :cond_f
    const-wide/16 v46, -0x1

    goto/16 :goto_2

    .line 2032
    :cond_10
    const-wide/16 v46, 0x0

    move-wide/from16 v31, v46

    .line 2033
    :goto_8
    nop

    .line 2034
    move-wide/from16 v46, v31

    move-object/from16 v48, v30

    move-object/from16 v0, v48

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v48, v0

    move-object/from16 v49, v30

    move-object/from16 v0, v49

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v49, v0

    sub-int v48, v48, v49

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    move-wide/from16 v33, v46

    .line 2035
    move-wide/from16 v46, v33

    move-wide/from16 v48, v12

    cmp-long v46, v46, v48

    if-lez v46, :cond_12

    .line 2039
    move-object/from16 v46, v30

    move-wide/from16 v47, v31

    move-wide/from16 v35, v47

    move-object/from16 v37, v46

    const/16 v46, 0x0

    move/from16 v38, v46

    .line 1972
    move-object/from16 v46, v37

    move-object/from16 v50, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v50

    if-eqz v47, :cond_14

    move-object/from16 v39, v46

    .line 1973
    move-wide/from16 v46, v35

    move-wide/from16 v40, v46

    .line 1978
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lokio/ByteString;->size()I

    move-result v46

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_18

    .line 1980
    move-object/from16 v46, v3

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lokio/ByteString;->getByte(I)B

    move-result v46

    move/from16 v23, v46

    .line 1981
    move-object/from16 v46, v3

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lokio/ByteString;->getByte(I)B

    move-result v46

    move/from16 v24, v46

    .line 1982
    :goto_9
    move-wide/from16 v46, v40

    move-object/from16 v48, v6

    invoke-virtual/range {v48 .. v48}, Lokio/Buffer;->size()J

    move-result-wide v48

    cmp-long v46, v46, v48

    if-gez v46, :cond_1d

    .line 1983
    move-object/from16 v46, v39

    move-object/from16 v0, v46

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v46, v0

    move-object/from16 v25, v46

    .line 1984
    move-object/from16 v46, v39

    move-object/from16 v0, v46

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v44

    add-long v46, v46, v48

    move-wide/from16 v48, v40

    sub-long v46, v46, v48

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v26, v46

    .line 1985
    move-object/from16 v46, v39

    move-object/from16 v0, v46

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v46, v0

    move/from16 v27, v46

    .line 1986
    :goto_a
    move/from16 v46, v26

    move/from16 v47, v27

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_16

    .line 1987
    move-object/from16 v46, v25

    move/from16 v47, v26

    aget-byte v46, v46, v47

    move/from16 v28, v46

    .line 1988
    move/from16 v46, v28

    move/from16 v47, v23

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_11

    move/from16 v46, v28

    move/from16 v47, v24

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_15

    .line 1989
    :cond_11
    move/from16 v46, v26

    move-object/from16 v47, v39

    move-object/from16 v0, v47

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v40

    add-long v46, v46, v48

    goto/16 :goto_2

    .line 2036
    :cond_12
    move-object/from16 v46, v30

    move-object/from16 v0, v46

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v46, v0

    move-object/from16 v50, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v50

    if-nez v47, :cond_13

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_13
    move-object/from16 v30, v46

    .line 2037
    move-wide/from16 v46, v33

    move-wide/from16 v31, v46

    .line 2033
    goto/16 :goto_8

    .line 1972
    :cond_14
    const-wide/16 v46, -0x1

    goto/16 :goto_2

    .line 1991
    :cond_15
    add-int/lit8 v26, v26, 0x1

    .line 1986
    goto :goto_a

    .line 1995
    :cond_16
    move-wide/from16 v46, v40

    move-object/from16 v48, v39

    move-object/from16 v0, v48

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v48, v0

    move-object/from16 v49, v39

    move-object/from16 v0, v49

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v49, v0

    sub-int v48, v48, v49

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    move-wide/from16 v40, v46

    .line 1996
    move-wide/from16 v46, v40

    move-wide/from16 v44, v46

    .line 1997
    move-object/from16 v46, v39

    move-object/from16 v0, v46

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v46, v0

    move-object/from16 v50, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v50

    if-nez v47, :cond_17

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_17
    move-object/from16 v39, v46

    .line 1982
    goto/16 :goto_9

    .line 2001
    :cond_18
    move-object/from16 v46, v3

    invoke-virtual/range {v46 .. v46}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v46

    move-object/from16 v23, v46

    .line 2002
    :goto_b
    move-wide/from16 v46, v40

    move-object/from16 v48, v6

    invoke-virtual/range {v48 .. v48}, Lokio/Buffer;->size()J

    move-result-wide v48

    cmp-long v46, v46, v48

    if-gez v46, :cond_1d

    .line 2003
    move-object/from16 v46, v39

    move-object/from16 v0, v46

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v46, v0

    move-object/from16 v24, v46

    .line 2004
    move-object/from16 v46, v39

    move-object/from16 v0, v46

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v44

    add-long v46, v46, v48

    move-wide/from16 v48, v40

    sub-long v46, v46, v48

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v25, v46

    .line 2005
    move-object/from16 v46, v39

    move-object/from16 v0, v46

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v46, v0

    move/from16 v26, v46

    .line 2006
    :goto_c
    move/from16 v46, v25

    move/from16 v47, v26

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_1b

    .line 2007
    move-object/from16 v46, v24

    move/from16 v47, v25

    aget-byte v46, v46, v47

    move/from16 v27, v46

    .line 2008
    move-object/from16 v46, v23

    move-object/from16 v29, v46

    move-object/from16 v46, v29

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v42, v46

    const/16 v46, 0x0

    move/from16 v43, v46

    :goto_d
    move/from16 v46, v43

    move/from16 v47, v42

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_1a

    move-object/from16 v46, v29

    move/from16 v47, v43

    aget-byte v46, v46, v47

    move/from16 v28, v46

    .line 2009
    move/from16 v46, v27

    move/from16 v47, v28

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_19

    move/from16 v46, v25

    move-object/from16 v47, v39

    move-object/from16 v0, v47

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v40

    add-long v46, v46, v48

    goto/16 :goto_2

    .line 2008
    :cond_19
    add-int/lit8 v43, v43, 0x1

    goto :goto_d

    .line 2011
    :cond_1a
    add-int/lit8 v25, v25, 0x1

    .line 2006
    goto :goto_c

    .line 2015
    :cond_1b
    move-wide/from16 v46, v40

    move-object/from16 v48, v39

    move-object/from16 v0, v48

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v48, v0

    move-object/from16 v49, v39

    move-object/from16 v0, v49

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v49, v0

    sub-int v48, v48, v49

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    move-wide/from16 v40, v46

    .line 2016
    move-wide/from16 v46, v40

    move-wide/from16 v44, v46

    .line 2017
    move-object/from16 v46, v39

    move-object/from16 v0, v46

    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v46, v0

    move-object/from16 v50, v46

    move-object/from16 v46, v50

    move-object/from16 v47, v50

    if-nez v47, :cond_1c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1c
    move-object/from16 v39, v46

    .line 2002
    goto/16 :goto_b

    .line 2019
    :cond_1d
    const-wide/16 v46, -0x1

    goto/16 :goto_2
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    new-instance v1, Lokio/Buffer$inputStream$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/Buffer$inputStream$1;-><init>(Lokio/Buffer;)V

    check-cast v1, Ljava/io/InputStream;

    move-object v0, v1

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 491
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 498
    move-object v0, p0

    move-object v1, v0

    const-string v2, "MD5"

    invoke-direct {v1, v2}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    new-instance v1, Lokio/Buffer$outputStream$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokio/Buffer$outputStream$1;-><init>(Lokio/Buffer;)V

    check-cast v1, Ljava/io/OutputStream;

    move-object v0, v1

    return-object v0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    new-instance v1, Lokio/PeekSource;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    check-cast v3, Lokio/BufferedSource;

    invoke-direct {v2, v3}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    check-cast v1, Lokio/Source;

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 10
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, v3

    const-string v5, "bytes"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    move-object v4, v0

    move-wide v5, v1

    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v3

    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 15
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v3

    const-string v11, "bytes"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    move-object v10, v0

    move-object v6, v10

    const/4 v10, 0x0

    move v7, v10

    .line 2040
    move-wide v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    move v10, v4

    if-ltz v10, :cond_0

    move v10, v5

    if-ltz v10, :cond_0

    .line 2043
    move-object v10, v6

    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v10

    move-wide v12, v1

    sub-long/2addr v10, v12

    move v12, v5

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 2044
    move-object v10, v3

    invoke-virtual {v10}, Lokio/ByteString;->size()I

    move-result v10

    move v11, v4

    sub-int/2addr v10, v11

    move v11, v5

    if-ge v10, v11, :cond_1

    .line 2045
    :cond_0
    const/4 v10, 0x0

    .line 487
    :goto_0
    move v0, v10

    return v0

    .line 2047
    :cond_1
    const/4 v10, 0x0

    move v8, v10

    move v10, v5

    move v9, v10

    :goto_1
    move v10, v8

    move v11, v9

    if-ge v10, v11, :cond_3

    .line 2048
    move-object v10, v6

    move-wide v11, v1

    move v13, v8

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Lokio/Buffer;->getByte(J)B

    move-result v10

    move-object v11, v3

    move v12, v4

    move v13, v8

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Lokio/ByteString;->getByte(I)B

    move-result v11

    if-eq v10, v11, :cond_2

    .line 2049
    const/4 v10, 0x0

    goto :goto_0

    .line 2047
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2052
    :cond_3
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 13
    .param p1    # Ljava/nio/ByteBuffer;
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

    move-object v7, v1

    const-string v8, "sink"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    move-object v7, v0

    iget-object v7, v7, Lokio/Buffer;->head:Lokio/Segment;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    if-eqz v8, :cond_1

    move-object v2, v7

    .line 350
    move-object v7, v1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    move v4, v7

    move-object v7, v2

    iget v7, v7, Lokio/Segment;->limit:I

    move-object v8, v2

    iget v8, v8, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    move v5, v7

    const/4 v7, 0x0

    move v6, v7

    move v7, v4

    move v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v3, v7

    .line 351
    move-object v7, v1

    move-object v8, v2

    iget-object v8, v8, Lokio/Segment;->data:[B

    move-object v9, v2

    iget v9, v9, Lokio/Segment;->pos:I

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 353
    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lokio/Segment;->pos:I

    move v9, v3

    add-int/2addr v8, v9

    iput v8, v7, Lokio/Segment;->pos:I

    .line 354
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lokio/Buffer;->size:J

    move v10, v3

    int-to-long v10, v10

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lokio/Buffer;->size:J

    .line 356
    move-object v7, v2

    iget v7, v7, Lokio/Segment;->pos:I

    move-object v8, v2

    iget v8, v8, Lokio/Segment;->limit:I

    if-ne v7, v8, :cond_0

    .line 357
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    iput-object v8, v7, Lokio/Buffer;->head:Lokio/Segment;

    .line 358
    move-object v7, v2

    invoke-static {v7}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 361
    :cond_0
    move v7, v3

    move v0, v7

    :goto_0
    return v0

    .line 348
    :cond_1
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method public read([B)I
    .locals 8
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string v5, "sink"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    move-object v4, v0

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    .line 1446
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->read([BII)I

    move-result v4

    .line 338
    move v0, v4

    return v0
.end method

.method public read([BII)I
    .locals 17
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v10, v1

    const-string v11, "sink"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    move-object v10, v0

    move-object v4, v10

    const/4 v10, 0x0

    move v5, v10

    .line 1454
    move-object v10, v1

    array-length v10, v10

    int-to-long v10, v10

    move v12, v2

    int-to-long v12, v12

    move v14, v3

    int-to-long v14, v14

    invoke-static/range {v10 .. v15}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1456
    move-object v10, v4

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    if-eqz v11, :cond_1

    move-object v6, v10

    .line 1457
    move-object v10, v6

    iget v10, v10, Lokio/Segment;->limit:I

    move-object v11, v6

    iget v11, v11, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    move v10, v3

    move v11, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v9, v10

    .line 1458
    move-object v10, v6

    iget-object v10, v10, Lokio/Segment;->data:[B

    .line 1459
    move-object v11, v1

    move v12, v2

    move-object v13, v6

    iget v13, v13, Lokio/Segment;->pos:I

    move-object v14, v6

    iget v14, v14, Lokio/Segment;->pos:I

    move v15, v9

    add-int/2addr v14, v15

    .line 1458
    invoke-static {v10, v11, v12, v13, v14}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    move-result-object v10

    .line 1462
    move-object v10, v6

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget v11, v11, Lokio/Segment;->pos:I

    move v12, v9

    add-int/2addr v11, v12

    iput v11, v10, Lokio/Segment;->pos:I

    .line 1463
    move-object v10, v4

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v11

    move v13, v9

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Lokio/Buffer;->setSize$okio(J)V

    .line 1465
    move-object v10, v6

    iget v10, v10, Lokio/Segment;->pos:I

    move-object v11, v6

    iget v11, v11, Lokio/Segment;->limit:I

    if-ne v10, v11, :cond_0

    .line 1466
    move-object v10, v4

    move-object v11, v6

    invoke-virtual {v11}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v11

    iput-object v11, v10, Lokio/Buffer;->head:Lokio/Segment;

    .line 1467
    move-object v10, v6

    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1470
    :cond_0
    move v10, v9

    .line 344
    :goto_0
    move v0, v10

    return v0

    .line 1456
    :cond_1
    const/4 v10, -0x1

    goto :goto_0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 17
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v12, v1

    const-string v13, "sink"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    move-object v12, v0

    move-object v4, v12

    const/4 v12, 0x0

    move v5, v12

    .line 1861
    move-wide v12, v2

    move-wide v10, v12

    .line 1862
    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    move v6, v12

    const/4 v12, 0x0

    move v7, v12

    const/4 v12, 0x0

    move v8, v12

    move v12, v6

    if-nez v12, :cond_1

    const/4 v12, 0x0

    move v9, v12

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "byteCount < 0: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v8

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Throwable;

    throw v12

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 1863
    :cond_1
    move-object v12, v4

    invoke-virtual {v12}, Lokio/Buffer;->size()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    const-wide/16 v12, -0x1

    .line 456
    :goto_1
    move-wide v0, v12

    return-wide v0

    .line 1864
    :cond_2
    move-wide v12, v10

    move-object v14, v4

    invoke-virtual {v14}, Lokio/Buffer;->size()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    move-object v12, v4

    invoke-virtual {v12}, Lokio/Buffer;->size()J

    move-result-wide v12

    move-wide v10, v12

    .line 1865
    :cond_3
    move-object v12, v1

    move-object v13, v4

    move-wide v14, v10

    invoke-virtual {v12, v13, v14, v15}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1866
    move-wide v12, v10

    goto :goto_1
.end method

.method public readAll(Lokio/Sink;)J
    .locals 10
    .param p1    # Lokio/Sink;
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

    move-object v6, v1

    const-string v7, "sink"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    move-object v6, v0

    move-object v2, v6

    const/4 v6, 0x0

    move v3, v6

    .line 1339
    move-object v6, v2

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-wide v4, v6

    .line 1340
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 1341
    move-object v6, v1

    move-object v7, v2

    move-wide v8, v4

    invoke-interface {v6, v7, v8, v9}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 1343
    :cond_0
    move-wide v6, v4

    .line 288
    move-wide v0, v6

    return-wide v0
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lokio/Buffer;->readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 10
    .param p1    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    const-string v7, "unsafeCursor"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    move-object v6, v1

    iget-object v6, v6, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v2, v6

    const/4 v6, 0x0

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    move v6, v2

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move v5, v6

    const-string v6, "already attached to a buffer"

    move-object v4, v6

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 580
    :cond_1
    move-object v6, v1

    move-object v7, v0

    check-cast v7, Lokio/Buffer;

    iput-object v7, v6, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 581
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 582
    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method

.method public readByte()B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    move-object v8, v0

    move-object v1, v8

    const/4 v8, 0x0

    move v2, v8

    .line 1065
    move-object v8, v1

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    new-instance v8, Ljava/io/EOFException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/io/EOFException;-><init>()V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    .line 1067
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    if-nez v9, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v3, v8

    .line 1068
    move-object v8, v3

    iget v8, v8, Lokio/Segment;->pos:I

    move v4, v8

    .line 1069
    move-object v8, v3

    iget v8, v8, Lokio/Segment;->limit:I

    move v5, v8

    .line 1071
    move-object v8, v3

    iget-object v8, v8, Lokio/Segment;->data:[B

    move-object v6, v8

    .line 1072
    move-object v8, v6

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v8, v8, v9

    move v7, v8

    .line 1073
    move-object v8, v1

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 1075
    move v8, v4

    move v9, v5

    if-ne v8, v9, :cond_2

    .line 1076
    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v9}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v9

    iput-object v9, v8, Lokio/Buffer;->head:Lokio/Segment;

    .line 1077
    move-object v8, v3

    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1080
    :goto_0
    move v8, v7

    .line 248
    move v0, v8

    return v0

    .line 1079
    :cond_2
    move-object v8, v3

    move v9, v4

    iput v9, v8, Lokio/Segment;->pos:I

    goto :goto_0
.end method

.method public readByteArray()[B
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    move-object v3, v0

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    .line 1439
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v3

    .line 333
    move-object v0, v3

    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    move-wide v1, p1

    move-object v9, v0

    move-object v3, v9

    const/4 v9, 0x0

    move v4, v9

    .line 1440
    move-wide v9, v1

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_0

    move-wide v9, v1

    const v11, 0x7fffffff

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    move v9, v5

    if-nez v9, :cond_1

    const/4 v9, 0x0

    move v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "byteCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1441
    :cond_1
    move-object v9, v3

    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v9

    move-wide v11, v1

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    new-instance v9, Ljava/io/EOFException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/io/EOFException;-><init>()V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    .line 1443
    :cond_2
    move-wide v9, v1

    long-to-int v9, v9

    new-array v9, v9, [B

    move-object v5, v9

    .line 1444
    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v9, v10}, Lokio/Buffer;->readFully([B)V

    .line 1445
    move-object v9, v5

    .line 336
    move-object v0, v9

    return-object v0
.end method

.method public readByteString()Lokio/ByteString;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    move-object v3, v0

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    .line 1318
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    .line 277
    move-object v0, v3

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 280
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v10, v0

    move-object v3, v10

    const/4 v10, 0x0

    move v4, v10

    .line 1319
    move-wide v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v1

    const v12, 0x7fffffff

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    move v10, v5

    if-nez v10, :cond_1

    const/4 v10, 0x0

    move v8, v10

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "byteCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 1320
    :cond_1
    move-object v10, v3

    invoke-virtual {v10}, Lokio/Buffer;->size()J

    move-result-wide v10

    move-wide v12, v1

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    new-instance v10, Ljava/io/EOFException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/io/EOFException;-><init>()V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .line 1322
    :cond_2
    move-wide v10, v1

    const/16 v12, 0x1000

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_3

    .line 1323
    move-object v10, v3

    move-wide v11, v1

    long-to-int v11, v11

    invoke-virtual {v10, v11}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v10

    move-object v5, v10

    const/4 v10, 0x0

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    move-object v10, v5

    move-object v8, v10

    const/4 v10, 0x0

    move v9, v10

    move-object v10, v3

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Lokio/Buffer;->skip(J)V

    move-object v10, v5

    .line 280
    :goto_1
    move-object v0, v10

    return-object v0

    .line 1325
    :cond_3
    new-instance v10, Lokio/ByteString;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    move-wide v13, v1

    invoke-virtual {v12, v13, v14}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v12

    invoke-direct {v11, v12}, Lokio/ByteString;-><init>([B)V

    goto :goto_1
.end method

.method public readDecimalLong()J
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 272
    move-object/from16 v2, p0

    move-object/from16 v19, v2

    move-object/from16 v3, v19

    const/16 v19, 0x0

    move/from16 v4, v19

    .line 1207
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lokio/Buffer;->size()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_0

    new-instance v19, Ljava/io/EOFException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/io/EOFException;-><init>()V

    check-cast v19, Ljava/lang/Throwable;

    throw v19

    .line 1210
    :cond_0
    const-wide/16 v19, 0x0

    move-wide/from16 v5, v19

    .line 1211
    const/16 v19, 0x0

    move/from16 v7, v19

    .line 1212
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 1213
    const/16 v19, 0x0

    move/from16 v9, v19

    .line 1215
    const-wide/16 v19, -0x7

    move-wide/from16 v10, v19

    .line 1217
    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v19, v0

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    if-nez v20, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-object/from16 v12, v19

    .line 1220
    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v13, v19

    .line 1221
    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v19, v0

    move/from16 v14, v19

    .line 1222
    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v19, v0

    move/from16 v15, v19

    .line 1224
    :goto_0
    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 1225
    move-object/from16 v19, v13

    move/from16 v20, v14

    aget-byte v19, v19, v20

    move/from16 v16, v19

    .line 1226
    move/from16 v19, v16

    const/16 v20, 0x30

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    move/from16 v19, v16

    const/16 v20, 0x39

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_6

    .line 1227
    const/16 v19, 0x30

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v20, v16

    sub-int v19, v19, v20

    move/from16 v17, v19

    .line 1230
    move-wide/from16 v19, v5

    const-wide v21, -0xcccccccccccccccL

    cmp-long v19, v19, v21

    if-ltz v19, :cond_3

    move-wide/from16 v19, v5

    const-wide v21, -0xcccccccccccccccL

    cmp-long v19, v19, v21

    if-nez v19, :cond_5

    move/from16 v19, v17

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v10

    cmp-long v19, v19, v21

    if-gez v19, :cond_5

    .line 1231
    :cond_3
    new-instance v19, Lokio/Buffer;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Lokio/Buffer;-><init>()V

    move-wide/from16 v20, v5

    invoke-virtual/range {v19 .. v21}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v19

    move/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v19

    move-object/from16 v18, v19

    .line 1232
    move/from16 v19, v8

    if-nez v19, :cond_4

    move-object/from16 v19, v18

    invoke-virtual/range {v19 .. v19}, Lokio/Buffer;->readByte()B

    move-result v19

    .line 1233
    :cond_4
    new-instance v19, Ljava/lang/NumberFormatException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Number too large: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v19, Ljava/lang/Throwable;

    throw v19

    .line 1235
    :cond_5
    move-wide/from16 v19, v5

    const-wide/16 v21, 0xa

    mul-long v19, v19, v21

    move-wide/from16 v5, v19

    .line 1236
    move-wide/from16 v19, v5

    move/from16 v21, v17

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    move-wide/from16 v5, v19

    .line 1249
    :goto_1
    add-int/lit8 v14, v14, 0x1

    .line 1250
    add-int/lit8 v7, v7, 0x1

    .line 1224
    goto/16 :goto_0

    .line 1237
    :cond_6
    move/from16 v19, v16

    const/16 v20, 0x2d

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move/from16 v19, v7

    if-nez v19, :cond_7

    .line 1238
    const/16 v19, 0x1

    move/from16 v8, v19

    .line 1239
    move-wide/from16 v19, v10

    const-wide/16 v21, 0x1

    sub-long v19, v19, v21

    move-wide/from16 v10, v19

    goto :goto_1

    .line 1241
    :cond_7
    move/from16 v19, v7

    if-nez v19, :cond_8

    .line 1242
    new-instance v19, Ljava/lang/NumberFormatException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    .line 1243
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v16

    invoke-static/range {v22 .. v22}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1242
    invoke-direct/range {v20 .. v21}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v19, Ljava/lang/Throwable;

    throw v19

    .line 1246
    :cond_8
    const/16 v19, 0x1

    move/from16 v9, v19

    .line 1253
    :cond_9
    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1254
    move-object/from16 v19, v3

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1255
    move-object/from16 v19, v12

    invoke-static/range {v19 .. v19}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1258
    :goto_2
    move/from16 v19, v9

    if-nez v19, :cond_a

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1261
    :cond_a
    move-object/from16 v19, v3

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-virtual/range {v20 .. v20}, Lokio/Buffer;->size()J

    move-result-wide v20

    move/from16 v22, v7

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Lokio/Buffer;->setSize$okio(J)V

    .line 1262
    move/from16 v19, v8

    if-eqz v19, :cond_c

    move-wide/from16 v19, v5

    .line 272
    :goto_3
    move-wide/from16 v2, v19

    return-wide v2

    .line 1257
    :cond_b
    move-object/from16 v19, v12

    move/from16 v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lokio/Segment;->pos:I

    goto :goto_2

    .line 1262
    :cond_c
    move-wide/from16 v19, v5

    move-wide/from16 v0, v19

    neg-long v0, v0

    move-wide/from16 v19, v0

    goto :goto_3
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .locals 7
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "input"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    move-object v2, v0

    move-object v3, v1

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 212
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .locals 14
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object v8, v1

    const-string v9, "input"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    move v8, v4

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "byteCount < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 219
    :cond_1
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 220
    move-object v8, v0

    move-object v0, v8

    return-object v0
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 11
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, v1

    const-string v7, "sink"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    move-object v6, v0

    move-object v4, v6

    const/4 v6, 0x0

    move v5, v6

    .line 1333
    move-object v6, v4

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 1334
    move-object v6, v1

    move-object v7, v4

    move-object v8, v4

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1335
    new-instance v6, Ljava/io/EOFException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 1337
    :cond_0
    move-object v6, v1

    move-object v7, v4

    move-wide v8, v2

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1338
    nop

    .line 285
    return-void
.end method

.method public readFully([B)V
    .locals 12
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    const-string v7, "sink"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    move-object v6, v0

    move-object v2, v6

    const/4 v6, 0x0

    move v3, v6

    .line 1447
    const/4 v6, 0x0

    move v4, v6

    .line 1448
    :goto_0
    move v6, v4

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 1449
    move-object v6, v2

    move-object v7, v1

    move v8, v4

    move-object v9, v1

    array-length v9, v9

    move v10, v4

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lokio/Buffer;->read([BII)I

    move-result v6

    move v5, v6

    .line 1450
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    new-instance v6, Ljava/io/EOFException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 1451
    :cond_0
    move v6, v4

    move v7, v5

    add-int/2addr v6, v7

    move v4, v6

    .line 1448
    goto :goto_0

    .line 1453
    :cond_1
    nop

    .line 341
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 275
    move-object/from16 v2, p0

    move-object/from16 v16, v2

    move-object/from16 v3, v16

    const/16 v16, 0x0

    move/from16 v4, v16

    .line 1263
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lokio/Buffer;->size()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_0

    new-instance v16, Ljava/io/EOFException;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Ljava/io/EOFException;-><init>()V

    check-cast v16, Ljava/lang/Throwable;

    throw v16

    .line 1265
    :cond_0
    const-wide/16 v16, 0x0

    move-wide/from16 v5, v16

    .line 1266
    const/16 v16, 0x0

    move/from16 v7, v16

    .line 1267
    const/16 v16, 0x0

    move/from16 v8, v16

    .line 1269
    :cond_1
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    if-nez v17, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-object/from16 v9, v16

    .line 1272
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v10, v16

    .line 1273
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v16, v0

    move/from16 v11, v16

    .line 1274
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v12, v16

    .line 1276
    :goto_0
    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 1277
    const/16 v16, 0x0

    move/from16 v13, v16

    .line 1279
    move-object/from16 v16, v10

    move/from16 v17, v11

    aget-byte v16, v16, v17

    move/from16 v14, v16

    .line 1280
    move/from16 v16, v14

    const/16 v17, 0x30

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    move/from16 v16, v14

    const/16 v17, 0x39

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 1281
    move/from16 v16, v14

    const/16 v17, 0x30

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 1297
    :goto_1
    move-wide/from16 v16, v5

    const-wide/high16 v18, -0x1000000000000000L    # -3.105036184601418E231

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_9

    .line 1298
    new-instance v16, Lokio/Buffer;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Lokio/Buffer;-><init>()V

    move-wide/from16 v17, v5

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v16

    move/from16 v17, v14

    invoke-virtual/range {v16 .. v17}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v16

    move-object/from16 v15, v16

    .line 1299
    new-instance v16, Ljava/lang/NumberFormatException;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Number too large: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v16, Ljava/lang/Throwable;

    throw v16

    .line 1282
    :cond_3
    move/from16 v16, v14

    const/16 v17, 0x61

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    move/from16 v16, v14

    const/16 v17, 0x66

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_4

    .line 1283
    move/from16 v16, v14

    const/16 v17, 0x61

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, 0xa

    add-int/lit8 v16, v16, 0xa

    move/from16 v13, v16

    goto/16 :goto_1

    .line 1284
    :cond_4
    move/from16 v16, v14

    const/16 v17, 0x41

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    move/from16 v16, v14

    const/16 v17, 0x46

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_5

    .line 1285
    move/from16 v16, v14

    const/16 v17, 0x41

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, 0xa

    add-int/lit8 v16, v16, 0xa

    move/from16 v13, v16

    goto/16 :goto_1

    .line 1287
    :cond_5
    move/from16 v16, v7

    if-nez v16, :cond_6

    .line 1288
    new-instance v16, Ljava/lang/NumberFormatException;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    .line 1289
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move/from16 v19, v14

    invoke-static/range {v19 .. v19}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1288
    invoke-direct/range {v17 .. v18}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v16, Ljava/lang/Throwable;

    throw v16

    .line 1292
    :cond_6
    const/16 v16, 0x1

    move/from16 v8, v16

    .line 1308
    :cond_7
    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1309
    move-object/from16 v16, v3

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1310
    move-object/from16 v16, v9

    invoke-static/range {v16 .. v16}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1313
    :goto_2
    move/from16 v16, v8

    if-nez v16, :cond_8

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 1316
    :cond_8
    move-object/from16 v16, v3

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    move/from16 v19, v7

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->setSize$okio(J)V

    .line 1317
    move-wide/from16 v16, v5

    .line 275
    move-wide/from16 v2, v16

    return-wide v2

    .line 1302
    :cond_9
    move-wide/from16 v16, v5

    const/16 v18, 0x4

    shl-long v16, v16, v18

    move-wide/from16 v5, v16

    .line 1303
    move-wide/from16 v16, v5

    move/from16 v18, v13

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    or-long v16, v16, v18

    move-wide/from16 v5, v16

    .line 1304
    add-int/lit8 v11, v11, 0x1

    .line 1305
    add-int/lit8 v7, v7, 0x1

    .line 1276
    goto/16 :goto_0

    .line 1312
    :cond_a
    move-object/from16 v16, v9

    move/from16 v17, v11

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lokio/Segment;->pos:I

    goto :goto_2
.end method

.method public readInt()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 257
    move-object/from16 v0, p0

    move-object v13, v0

    move-object v1, v13

    const/4 v13, 0x0

    move v2, v13

    .line 1133
    move-object v13, v1

    invoke-virtual {v13}, Lokio/Buffer;->size()J

    move-result-wide v13

    const-wide/16 v15, 0x4

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    new-instance v13, Ljava/io/EOFException;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/io/EOFException;-><init>()V

    check-cast v13, Ljava/lang/Throwable;

    throw v13

    .line 1135
    :cond_0
    move-object v13, v1

    iget-object v13, v13, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    if-nez v14, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v3, v13

    .line 1136
    move-object v13, v3

    iget v13, v13, Lokio/Segment;->pos:I

    move v4, v13

    .line 1137
    move-object v13, v3

    iget v13, v13, Lokio/Segment;->limit:I

    move v5, v13

    .line 1140
    move v13, v5

    move v14, v4

    sub-int/2addr v13, v14

    int-to-long v13, v13

    const-wide/16 v15, 0x4

    cmp-long v13, v13, v15

    if-gez v13, :cond_2

    .line 1141
    move-object v13, v1

    invoke-virtual {v13}, Lokio/Buffer;->readByte()B

    move-result v13

    move v6, v13

    const/16 v13, 0xff

    move v7, v13

    const/4 v13, 0x0

    move v8, v13

    .line 1142
    move v13, v6

    move v14, v7

    and-int/2addr v13, v14

    .line 1141
    const/16 v14, 0x18

    shl-int/lit8 v13, v13, 0x18

    .line 1143
    move-object v14, v1

    invoke-virtual {v14}, Lokio/Buffer;->readByte()B

    move-result v14

    move v6, v14

    const/16 v14, 0xff

    move v7, v14

    move v9, v13

    const/4 v13, 0x0

    move v8, v13

    .line 1144
    move v13, v6

    move v14, v7

    and-int/2addr v13, v14

    move v10, v13

    move v13, v9

    move v14, v10

    .line 1143
    const/16 v15, 0x10

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    .line 1145
    move-object v14, v1

    invoke-virtual {v14}, Lokio/Buffer;->readByte()B

    move-result v14

    move v6, v14

    const/16 v14, 0xff

    move v7, v14

    move v9, v13

    const/4 v13, 0x0

    move v8, v13

    .line 1146
    move v13, v6

    move v14, v7

    and-int/2addr v13, v14

    move v10, v13

    move v13, v9

    move v14, v10

    .line 1145
    const/16 v15, 0x8

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    .line 1147
    move-object v14, v1

    invoke-virtual {v14}, Lokio/Buffer;->readByte()B

    move-result v14

    move v6, v14

    const/16 v14, 0xff

    move v7, v14

    move v9, v13

    const/4 v13, 0x0

    move v8, v13

    .line 1148
    move v13, v6

    move v14, v7

    and-int/2addr v13, v14

    move v10, v13

    move v13, v9

    move v14, v10

    .line 1147
    or-int/2addr v13, v14

    .line 257
    :goto_0
    move v0, v13

    return v0

    .line 1149
    :cond_2
    move-object v13, v3

    iget-object v13, v13, Lokio/Segment;->data:[B

    move-object v6, v13

    .line 1150
    move-object v13, v6

    move v14, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v13, v13, v14

    move v8, v13

    const/16 v13, 0xff

    move v11, v13

    const/4 v13, 0x0

    move v12, v13

    .line 1151
    move v13, v8

    move v14, v11

    and-int/2addr v13, v14

    .line 1150
    const/16 v14, 0x18

    shl-int/lit8 v13, v13, 0x18

    .line 1152
    move-object v14, v6

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v14, v14, v15

    move v8, v14

    const/16 v14, 0xff

    move v11, v14

    move v9, v13

    const/4 v13, 0x0

    move v12, v13

    .line 1153
    move v13, v8

    move v14, v11

    and-int/2addr v13, v14

    move v10, v13

    move v13, v9

    move v14, v10

    .line 1152
    const/16 v15, 0x10

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    .line 1154
    move-object v14, v6

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v14, v14, v15

    move v8, v14

    const/16 v14, 0xff

    move v11, v14

    move v9, v13

    const/4 v13, 0x0

    move v12, v13

    .line 1155
    move v13, v8

    move v14, v11

    and-int/2addr v13, v14

    move v10, v13

    move v13, v9

    move v14, v10

    .line 1154
    const/16 v15, 0x8

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    .line 1156
    move-object v14, v6

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v14, v14, v15

    move v8, v14

    const/16 v14, 0xff

    move v11, v14

    move v9, v13

    const/4 v13, 0x0

    move v12, v13

    .line 1157
    move v13, v8

    move v14, v11

    and-int/2addr v13, v14

    move v10, v13

    move v13, v9

    move v14, v10

    .line 1156
    or-int/2addr v13, v14

    .line 1150
    move v7, v13

    .line 1158
    move-object v13, v1

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-virtual {v14}, Lokio/Buffer;->size()J

    move-result-wide v14

    const-wide/16 v16, 0x4

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Lokio/Buffer;->setSize$okio(J)V

    .line 1160
    move v13, v4

    move v14, v5

    if-ne v13, v14, :cond_3

    .line 1161
    move-object v13, v1

    move-object v14, v3

    invoke-virtual {v14}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v14

    iput-object v14, v13, Lokio/Buffer;->head:Lokio/Segment;

    .line 1162
    move-object v13, v3

    invoke-static {v13}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1165
    :goto_1
    move v13, v7

    goto/16 :goto_0

    .line 1164
    :cond_3
    move-object v13, v3

    move v14, v4

    iput v14, v13, Lokio/Segment;->pos:I

    goto :goto_1
.end method

.method public readIntLe()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->readInt()I

    move-result v1

    invoke-static {v1}, Lokio/-Util;->reverseBytes(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public readLong()J
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 260
    move-object/from16 v2, p0

    move-object/from16 v19, v2

    move-object/from16 v3, v19

    const/16 v19, 0x0

    move/from16 v4, v19

    .line 1168
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lokio/Buffer;->size()J

    move-result-wide v19

    const-wide/16 v21, 0x8

    cmp-long v19, v19, v21

    if-gez v19, :cond_0

    new-instance v19, Ljava/io/EOFException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/io/EOFException;-><init>()V

    check-cast v19, Ljava/lang/Throwable;

    throw v19

    .line 1170
    :cond_0
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v19, v0

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    if-nez v20, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object/from16 v5, v19

    .line 1171
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v19, v0

    move/from16 v6, v19

    .line 1172
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v19, v0

    move/from16 v7, v19

    .line 1175
    move/from16 v19, v7

    move/from16 v20, v6

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x8

    cmp-long v19, v19, v21

    if-gez v19, :cond_2

    .line 1176
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lokio/Buffer;->readInt()I

    move-result v19

    move/from16 v8, v19

    const-wide v19, 0xffffffffL

    move-wide/from16 v9, v19

    const/16 v19, 0x0

    move/from16 v11, v19

    .line 1177
    move/from16 v19, v8

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v9

    and-long v19, v19, v21

    .line 1176
    const/16 v21, 0x20

    shl-long v19, v19, v21

    .line 1178
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lokio/Buffer;->readInt()I

    move-result v21

    move/from16 v8, v21

    const-wide v21, 0xffffffffL

    move-wide/from16 v9, v21

    move-wide/from16 v12, v19

    const/16 v19, 0x0

    move/from16 v11, v19

    .line 1179
    move/from16 v19, v8

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v9

    and-long v19, v19, v21

    move-wide/from16 v14, v19

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    .line 1178
    or-long v19, v19, v21

    .line 260
    :goto_0
    move-wide/from16 v2, v19

    return-wide v2

    .line 1180
    :cond_2
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 1181
    move-object/from16 v19, v8

    move/from16 v20, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v19, v19, v20

    move/from16 v11, v19

    const-wide/16 v19, 0xff

    move-wide/from16 v16, v19

    const/16 v19, 0x0

    move/from16 v18, v19

    .line 1182
    move/from16 v19, v11

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    and-long v19, v19, v21

    .line 1181
    const/16 v21, 0x38

    shl-long v19, v19, v21

    .line 1183
    move-object/from16 v21, v8

    move/from16 v22, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v21, v21, v22

    move/from16 v11, v21

    const-wide/16 v21, 0xff

    move-wide/from16 v16, v21

    move-wide/from16 v12, v19

    const/16 v19, 0x0

    move/from16 v18, v19

    .line 1184
    move/from16 v19, v11

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    and-long v19, v19, v21

    move-wide/from16 v14, v19

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    .line 1183
    const/16 v23, 0x30

    shl-long v21, v21, v23

    or-long v19, v19, v21

    .line 1185
    move-object/from16 v21, v8

    move/from16 v22, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v21, v21, v22

    move/from16 v11, v21

    const-wide/16 v21, 0xff

    move-wide/from16 v16, v21

    move-wide/from16 v12, v19

    const/16 v19, 0x0

    move/from16 v18, v19

    .line 1186
    move/from16 v19, v11

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    and-long v19, v19, v21

    move-wide/from16 v14, v19

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    .line 1185
    const/16 v23, 0x28

    shl-long v21, v21, v23

    or-long v19, v19, v21

    .line 1187
    move-object/from16 v21, v8

    move/from16 v22, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v21, v21, v22

    move/from16 v11, v21

    const-wide/16 v21, 0xff

    move-wide/from16 v16, v21

    move-wide/from16 v12, v19

    const/16 v19, 0x0

    move/from16 v18, v19

    .line 1188
    move/from16 v19, v11

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    and-long v19, v19, v21

    move-wide/from16 v14, v19

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    .line 1187
    const/16 v23, 0x20

    shl-long v21, v21, v23

    or-long v19, v19, v21

    .line 1189
    move-object/from16 v21, v8

    move/from16 v22, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v21, v21, v22

    move/from16 v11, v21

    const-wide/16 v21, 0xff

    move-wide/from16 v16, v21

    move-wide/from16 v12, v19

    const/16 v19, 0x0

    move/from16 v18, v19

    .line 1190
    move/from16 v19, v11

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    and-long v19, v19, v21

    move-wide/from16 v14, v19

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    .line 1189
    const/16 v23, 0x18

    shl-long v21, v21, v23

    or-long v19, v19, v21

    .line 1191
    move-object/from16 v21, v8

    move/from16 v22, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v21, v21, v22

    move/from16 v11, v21

    const-wide/16 v21, 0xff

    move-wide/from16 v16, v21

    move-wide/from16 v12, v19

    const/16 v19, 0x0

    move/from16 v18, v19

    .line 1192
    move/from16 v19, v11

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    and-long v19, v19, v21

    move-wide/from16 v14, v19

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    .line 1191
    const/16 v23, 0x10

    shl-long v21, v21, v23

    or-long v19, v19, v21

    .line 1193
    move-object/from16 v21, v8

    move/from16 v22, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v21, v21, v22

    move/from16 v11, v21

    const-wide/16 v21, 0xff

    move-wide/from16 v16, v21

    move-wide/from16 v12, v19

    const/16 v19, 0x0

    move/from16 v18, v19

    .line 1194
    move/from16 v19, v11

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    and-long v19, v19, v21

    move-wide/from16 v14, v19

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    .line 1193
    const/16 v23, 0x8

    shl-long v21, v21, v23

    or-long v19, v19, v21

    .line 1195
    move-object/from16 v21, v8

    move/from16 v22, v6

    add-int/lit8 v6, v6, 0x1

    aget-byte v21, v21, v22

    move/from16 v11, v21

    const-wide/16 v21, 0xff

    move-wide/from16 v16, v21

    move-wide/from16 v12, v19

    const/16 v19, 0x0

    move/from16 v18, v19

    .line 1196
    move/from16 v19, v11

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v16

    and-long v19, v19, v21

    move-wide/from16 v14, v19

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    .line 1195
    or-long v19, v19, v21

    .line 1181
    move-wide/from16 v9, v19

    .line 1197
    move-object/from16 v19, v3

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-virtual/range {v20 .. v20}, Lokio/Buffer;->size()J

    move-result-wide v20

    const-wide/16 v22, 0x8

    sub-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Lokio/Buffer;->setSize$okio(J)V

    .line 1199
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1200
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1201
    move-object/from16 v19, v5

    invoke-static/range {v19 .. v19}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1204
    :goto_1
    move-wide/from16 v19, v9

    goto/16 :goto_0

    .line 1203
    :cond_3
    move-object/from16 v19, v5

    move/from16 v20, v6

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lokio/Segment;->pos:I

    goto :goto_1
.end method

.method public readLongLe()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lokio/-Util;->reverseBytes(J)J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public readShort()S
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 254
    move-object/from16 v0, p0

    move-object v13, v0

    move-object v1, v13

    const/4 v13, 0x0

    move v2, v13

    .line 1105
    move-object v13, v1

    invoke-virtual {v13}, Lokio/Buffer;->size()J

    move-result-wide v13

    const-wide/16 v15, 0x2

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    new-instance v13, Ljava/io/EOFException;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/io/EOFException;-><init>()V

    check-cast v13, Ljava/lang/Throwable;

    throw v13

    .line 1107
    :cond_0
    move-object v13, v1

    iget-object v13, v13, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    if-nez v14, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v3, v13

    .line 1108
    move-object v13, v3

    iget v13, v13, Lokio/Segment;->pos:I

    move v4, v13

    .line 1109
    move-object v13, v3

    iget v13, v13, Lokio/Segment;->limit:I

    move v5, v13

    .line 1112
    move v13, v5

    move v14, v4

    sub-int/2addr v13, v14

    const/4 v14, 0x2

    if-ge v13, v14, :cond_2

    .line 1113
    move-object v13, v1

    invoke-virtual {v13}, Lokio/Buffer;->readByte()B

    move-result v13

    move v6, v13

    const/16 v13, 0xff

    move v7, v13

    const/4 v13, 0x0

    move v8, v13

    .line 1114
    move v13, v6

    move v14, v7

    and-int/2addr v13, v14

    .line 1113
    const/16 v14, 0x8

    shl-int/lit8 v13, v13, 0x8

    move-object v14, v1

    invoke-virtual {v14}, Lokio/Buffer;->readByte()B

    move-result v14

    move v6, v14

    const/16 v14, 0xff

    move v7, v14

    move v9, v13

    const/4 v13, 0x0

    move v8, v13

    .line 1115
    move v13, v6

    move v14, v7

    and-int/2addr v13, v14

    move v10, v13

    move v13, v9

    move v14, v10

    .line 1113
    or-int/2addr v13, v14

    move v11, v13

    .line 1116
    move v13, v11

    int-to-short v13, v13

    .line 254
    :goto_0
    move v0, v13

    return v0

    .line 1119
    :cond_2
    move-object v13, v3

    iget-object v13, v13, Lokio/Segment;->data:[B

    move-object v11, v13

    .line 1120
    move-object v13, v11

    move v14, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v13, v13, v14

    move v7, v13

    const/16 v13, 0xff

    move v8, v13

    const/4 v13, 0x0

    move v12, v13

    .line 1121
    move v13, v7

    move v14, v8

    and-int/2addr v13, v14

    .line 1120
    const/16 v14, 0x8

    shl-int/lit8 v13, v13, 0x8

    move-object v14, v11

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v14, v14, v15

    move v7, v14

    const/16 v14, 0xff

    move v8, v14

    move v9, v13

    const/4 v13, 0x0

    move v12, v13

    .line 1122
    move v13, v7

    move v14, v8

    and-int/2addr v13, v14

    move v10, v13

    move v13, v9

    move v14, v10

    .line 1120
    or-int/2addr v13, v14

    move v6, v13

    .line 1123
    move-object v13, v1

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-virtual {v14}, Lokio/Buffer;->size()J

    move-result-wide v14

    const-wide/16 v16, 0x2

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Lokio/Buffer;->setSize$okio(J)V

    .line 1125
    move v13, v4

    move v14, v5

    if-ne v13, v14, :cond_3

    .line 1126
    move-object v13, v1

    move-object v14, v3

    invoke-virtual {v14}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v14

    iput-object v14, v13, Lokio/Buffer;->head:Lokio/Segment;

    .line 1127
    move-object v13, v3

    invoke-static {v13}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1130
    :goto_1
    move v13, v6

    int-to-short v13, v13

    goto :goto_0

    .line 1129
    :cond_3
    move-object v13, v3

    move v14, v4

    iput v14, v13, Lokio/Segment;->pos:I

    goto :goto_1
.end method

.method public readShortLe()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->readShort()S

    move-result v1

    invoke-static {v1}, Lokio/-Util;->reverseBytes(S)S

    move-result v1

    move v0, v1

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 17
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object v10, v3

    const-string v11, "charset"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    move-wide v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v1

    const v12, 0x7fffffff

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v4, v10

    const/4 v10, 0x0

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    move v10, v4

    if-nez v10, :cond_1

    const/4 v10, 0x0

    move v7, v10

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "byteCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 300
    :cond_1
    move-object v10, v0

    iget-wide v10, v10, Lokio/Buffer;->size:J

    move-wide v12, v1

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    new-instance v10, Ljava/io/EOFException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/io/EOFException;-><init>()V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .line 301
    :cond_2
    move-wide v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    const-string v10, ""

    move-object v0, v10

    .line 318
    :goto_1
    return-object v0

    .line 303
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    if-nez v11, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    move-object v4, v10

    .line 304
    move-object v10, v4

    iget v10, v10, Lokio/Segment;->pos:I

    int-to-long v10, v10

    move-wide v12, v1

    add-long/2addr v10, v12

    move-object v12, v4

    iget v12, v12, Lokio/Segment;->limit:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 306
    move-object v10, v0

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v10

    move-object v5, v10

    const/4 v10, 0x0

    move v6, v10

    new-instance v10, Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v5

    move-object v13, v3

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v10

    goto :goto_1

    .line 309
    :cond_5
    move-object v10, v4

    iget-object v10, v10, Lokio/Segment;->data:[B

    move-object v6, v10

    move-object v10, v4

    iget v10, v10, Lokio/Segment;->pos:I

    move v7, v10

    move-wide v10, v1

    long-to-int v10, v10

    move v8, v10

    const/4 v10, 0x0

    move v9, v10

    new-instance v10, Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v6

    move v13, v7

    move v14, v8

    move-object v15, v3

    invoke-direct {v11, v12, v13, v14, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v5, v10

    .line 310
    move-object v10, v4

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget v11, v11, Lokio/Segment;->pos:I

    move-wide v12, v1

    long-to-int v12, v12

    add-int/2addr v11, v12

    iput v11, v10, Lokio/Segment;->pos:I

    .line 311
    move-object v10, v0

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    iget-wide v11, v11, Lokio/Buffer;->size:J

    move-wide v13, v1

    sub-long/2addr v11, v13

    iput-wide v11, v10, Lokio/Buffer;->size:J

    .line 313
    move-object v10, v4

    iget v10, v10, Lokio/Segment;->pos:I

    move-object v11, v4

    iget v11, v11, Lokio/Segment;->limit:I

    if-ne v10, v11, :cond_6

    .line 314
    move-object v10, v0

    move-object v11, v4

    invoke-virtual {v11}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v11

    iput-object v11, v10, Lokio/Buffer;->head:Lokio/Segment;

    .line 315
    move-object v10, v4

    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 318
    :cond_6
    move-object v10, v5

    move-object v0, v10

    goto/16 :goto_1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "charset"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    move-object v2, v0

    move-object v3, v0

    iget-wide v3, v3, Lokio/Buffer;->size:J

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lokio/Buffer;->readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 10
    .param p1    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    const-string v7, "unsafeCursor"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    move-object v6, v1

    iget-object v6, v6, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v2, v6

    const/4 v6, 0x0

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    move v6, v2

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move v5, v6

    const-string v6, "already attached to a buffer"

    move-object v4, v6

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 571
    :cond_1
    move-object v6, v1

    move-object v7, v0

    check-cast v7, Lokio/Buffer;

    iput-object v7, v6, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 572
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 573
    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lokio/Buffer;->size:J

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2, v3, v4}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4, v5, v6}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 331
    move-object/from16 v2, p0

    move-object/from16 v17, v2

    move-object/from16 v3, v17

    const/16 v17, 0x0

    move/from16 v4, v17

    .line 1364
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_0

    new-instance v17, Ljava/io/EOFException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/io/EOFException;-><init>()V

    check-cast v17, Ljava/lang/Throwable;

    throw v17

    .line 1366
    :cond_0
    move-object/from16 v17, v3

    const-wide/16 v18, 0x0

    invoke-virtual/range {v17 .. v19}, Lokio/Buffer;->getByte(J)B

    move-result v17

    move/from16 v5, v17

    .line 1367
    const/16 v17, 0x0

    move/from16 v6, v17

    .line 1368
    const/16 v17, 0x0

    move/from16 v7, v17

    .line 1369
    const/16 v17, 0x0

    move/from16 v8, v17

    .line 1371
    nop

    .line 1372
    move/from16 v17, v5

    move/from16 v9, v17

    const/16 v17, 0x80

    move/from16 v10, v17

    const/16 v17, 0x0

    move/from16 v11, v17

    .line 1373
    move/from16 v17, v9

    move/from16 v18, v10

    and-int v17, v17, v18

    if-nez v17, :cond_1

    .line 1374
    move/from16 v17, v5

    move/from16 v9, v17

    const/16 v17, 0x7f

    move/from16 v10, v17

    const/16 v17, 0x0

    move/from16 v11, v17

    .line 1375
    move/from16 v17, v9

    move/from16 v18, v10

    and-int v17, v17, v18

    move/from16 v6, v17

    .line 1376
    const/16 v17, 0x1

    move/from16 v7, v17

    .line 1377
    const/16 v17, 0x0

    move/from16 v8, v17

    .line 1407
    :goto_0
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    move/from16 v19, v7

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-gez v17, :cond_5

    .line 1408
    new-instance v17, Ljava/io/EOFException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "size < "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lokio/Buffer;->size()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (to read code point prefixed 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v5

    invoke-static/range {v20 .. v20}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x29

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    check-cast v17, Ljava/lang/Throwable;

    throw v17

    .line 1379
    :cond_1
    move/from16 v17, v5

    move/from16 v9, v17

    const/16 v17, 0xe0

    move/from16 v10, v17

    const/16 v17, 0x0

    move/from16 v11, v17

    .line 1380
    move/from16 v17, v9

    move/from16 v18, v10

    and-int v17, v17, v18

    const/16 v18, 0xc0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1381
    move/from16 v17, v5

    move/from16 v9, v17

    const/16 v17, 0x1f

    move/from16 v10, v17

    const/16 v17, 0x0

    move/from16 v11, v17

    .line 1382
    move/from16 v17, v9

    move/from16 v18, v10

    and-int v17, v17, v18

    move/from16 v6, v17

    .line 1383
    const/16 v17, 0x2

    move/from16 v7, v17

    .line 1384
    const/16 v17, 0x80

    move/from16 v8, v17

    goto/16 :goto_0

    .line 1386
    :cond_2
    move/from16 v17, v5

    move/from16 v9, v17

    const/16 v17, 0xf0

    move/from16 v10, v17

    const/16 v17, 0x0

    move/from16 v11, v17

    .line 1387
    move/from16 v17, v9

    move/from16 v18, v10

    and-int v17, v17, v18

    const/16 v18, 0xe0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1388
    move/from16 v17, v5

    move/from16 v9, v17

    const/16 v17, 0xf

    move/from16 v10, v17

    const/16 v17, 0x0

    move/from16 v11, v17

    .line 1389
    move/from16 v17, v9

    move/from16 v18, v10

    and-int v17, v17, v18

    move/from16 v6, v17

    .line 1390
    const/16 v17, 0x3

    move/from16 v7, v17

    .line 1391
    const/16 v17, 0x800

    move/from16 v8, v17

    goto/16 :goto_0

    .line 1393
    :cond_3
    move/from16 v17, v5

    move/from16 v9, v17

    const/16 v17, 0xf8

    move/from16 v10, v17

    const/16 v17, 0x0

    move/from16 v11, v17

    .line 1394
    move/from16 v17, v9

    move/from16 v18, v10

    and-int v17, v17, v18

    const/16 v18, 0xf0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1395
    move/from16 v17, v5

    move/from16 v9, v17

    const/16 v17, 0x7

    move/from16 v10, v17

    const/16 v17, 0x0

    move/from16 v11, v17

    .line 1396
    move/from16 v17, v9

    move/from16 v18, v10

    and-int v17, v17, v18

    move/from16 v6, v17

    .line 1397
    const/16 v17, 0x4

    move/from16 v7, v17

    .line 1398
    const/high16 v17, 0x10000

    move/from16 v8, v17

    goto/16 :goto_0

    .line 1402
    :cond_4
    move-object/from16 v17, v3

    const-wide/16 v18, 0x1

    invoke-virtual/range {v17 .. v19}, Lokio/Buffer;->skip(J)V

    .line 1403
    const v17, 0xfffd

    .line 331
    :goto_1
    move/from16 v2, v17

    return v2

    .line 1414
    :cond_5
    const/16 v17, 0x1

    move/from16 v9, v17

    move/from16 v17, v7

    move/from16 v10, v17

    :goto_2
    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 1415
    move-object/from16 v17, v3

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lokio/Buffer;->getByte(J)B

    move-result v17

    move/from16 v11, v17

    .line 1416
    move/from16 v17, v11

    move/from16 v12, v17

    const/16 v17, 0xc0

    move/from16 v13, v17

    const/16 v17, 0x0

    move/from16 v14, v17

    .line 1417
    move/from16 v17, v12

    move/from16 v18, v13

    and-int v17, v17, v18

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1418
    move/from16 v17, v6

    const/16 v18, 0x6

    shl-int/lit8 v17, v17, 0x6

    move/from16 v6, v17

    .line 1419
    move/from16 v17, v6

    move/from16 v18, v11

    move/from16 v12, v18

    const/16 v18, 0x3f

    move/from16 v13, v18

    move/from16 v15, v17

    const/16 v17, 0x0

    move/from16 v14, v17

    .line 1420
    move/from16 v17, v12

    move/from16 v18, v13

    and-int v17, v17, v18

    move/from16 v16, v17

    move/from16 v17, v15

    move/from16 v18, v16

    .line 1419
    or-int v17, v17, v18

    move/from16 v6, v17

    .line 1414
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1421
    :cond_6
    move-object/from16 v17, v3

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lokio/Buffer;->skip(J)V

    .line 1422
    const v17, 0xfffd

    goto :goto_1

    .line 1426
    :cond_7
    move-object/from16 v17, v3

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lokio/Buffer;->skip(J)V

    .line 1428
    nop

    .line 1429
    move/from16 v17, v6

    const v18, 0x10ffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    .line 1430
    const v17, 0xfffd

    goto/16 :goto_1

    .line 1432
    :cond_8
    const v17, 0xdfff

    const v18, 0xd800

    move/from16 v19, v6

    move/from16 v9, v19

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 1435
    :cond_9
    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 1436
    const v17, 0xfffd

    goto/16 :goto_1

    .line 1432
    :cond_a
    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    .line 1433
    const v17, 0xfffd

    goto/16 :goto_1

    .line 1438
    :cond_b
    move/from16 v17, v6

    .line 1428
    nop

    goto/16 :goto_1
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    move-object v5, v0

    move-object v1, v5

    const/4 v5, 0x0

    move v2, v5

    .line 1344
    move-object v5, v1

    const/16 v6, 0xa

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v5

    move-wide v3, v5

    .line 1346
    nop

    .line 1347
    move-wide v5, v3

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    move-object v5, v1

    move-wide v6, v3

    invoke-static {v5, v6, v7}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v5

    .line 322
    :goto_0
    move-object v0, v5

    return-object v0

    .line 1348
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1349
    :cond_1
    const/4 v5, 0x0

    .line 1346
    nop

    goto :goto_0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 328
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v36, v2

    move-object/from16 v5, v36

    const/16 v36, 0x0

    move/from16 v6, v36

    .line 1350
    move-wide/from16 v36, v3

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-ltz v36, :cond_0

    const/16 v36, 0x1

    :goto_0
    move/from16 v7, v36

    const/16 v36, 0x0

    move/from16 v8, v36

    const/16 v36, 0x0

    move/from16 v9, v36

    move/from16 v36, v7

    if-nez v36, :cond_1

    const/16 v36, 0x0

    move/from16 v10, v36

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "limit < 0: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-wide/from16 v37, v3

    invoke-virtual/range {v36 .. v38}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v9, v36

    new-instance v36, Ljava/lang/IllegalArgumentException;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move-object/from16 v38, v9

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v36, Ljava/lang/Throwable;

    throw v36

    :cond_0
    const/16 v36, 0x0

    goto :goto_0

    .line 1351
    :cond_1
    move-wide/from16 v36, v3

    const-wide v38, 0x7fffffffffffffffL

    cmp-long v36, v36, v38

    if-nez v36, :cond_2

    const-wide v36, 0x7fffffffffffffffL

    :goto_1
    move-wide/from16 v11, v36

    .line 1352
    move-object/from16 v36, v5

    const/16 v37, 0xa

    move/from16 v0, v37

    int-to-byte v0, v0

    move/from16 v37, v0

    const-wide/16 v38, 0x0

    move-wide/from16 v40, v11

    invoke-virtual/range {v36 .. v41}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v36

    move-wide/from16 v13, v36

    .line 1353
    move-wide/from16 v36, v13

    const-wide/16 v38, -0x1

    cmp-long v36, v36, v38

    if-eqz v36, :cond_3

    move-object/from16 v36, v5

    move-wide/from16 v37, v13

    invoke-static/range {v36 .. v38}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v36

    .line 328
    :goto_2
    move-object/from16 v2, v36

    return-object v2

    .line 1351
    :cond_2
    move-wide/from16 v36, v3

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    goto :goto_1

    .line 1354
    :cond_3
    move-wide/from16 v36, v11

    move-object/from16 v38, v5

    invoke-virtual/range {v38 .. v38}, Lokio/Buffer;->size()J

    move-result-wide v38

    cmp-long v36, v36, v38

    if-gez v36, :cond_4

    .line 1355
    move-object/from16 v36, v5

    move-wide/from16 v37, v11

    const-wide/16 v39, 0x1

    sub-long v37, v37, v39

    invoke-virtual/range {v36 .. v38}, Lokio/Buffer;->getByte(J)B

    move-result v36

    const/16 v37, 0xd

    move/from16 v0, v37

    int-to-byte v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_4

    .line 1356
    move-object/from16 v36, v5

    move-wide/from16 v37, v11

    invoke-virtual/range {v36 .. v38}, Lokio/Buffer;->getByte(J)B

    move-result v36

    const/16 v37, 0xa

    move/from16 v0, v37

    int-to-byte v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_4

    .line 1357
    move-object/from16 v36, v5

    move-wide/from16 v37, v11

    invoke-static/range {v36 .. v38}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v36

    goto :goto_2

    .line 1359
    :cond_4
    new-instance v36, Lokio/Buffer;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    invoke-direct/range {v37 .. v37}, Lokio/Buffer;-><init>()V

    move-object/from16 v15, v36

    .line 1360
    move-object/from16 v36, v5

    move-object/from16 v37, v15

    const-wide/16 v38, 0x0

    const/16 v40, 0x20

    move/from16 v16, v40

    move-object/from16 v40, v5

    invoke-virtual/range {v40 .. v40}, Lokio/Buffer;->size()J

    move-result-wide v40

    move-wide/from16 v17, v40

    move-wide/from16 v19, v38

    move-object/from16 v21, v37

    move-object/from16 v22, v36

    const/16 v36, 0x0

    move/from16 v23, v36

    .line 1361
    move/from16 v36, v16

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-wide/from16 v24, v36

    const/16 v36, 0x0

    move/from16 v26, v36

    move-wide/from16 v36, v24

    move-wide/from16 v38, v17

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v36

    move-wide/from16 v27, v36

    move-object/from16 v36, v22

    move-object/from16 v37, v21

    move-wide/from16 v38, v19

    move-wide/from16 v40, v27

    .line 1360
    invoke-virtual/range {v36 .. v41}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v36

    .line 1362
    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "\\n not found: limit="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v37, v5

    invoke-virtual/range {v37 .. v37}, Lokio/Buffer;->size()J

    move-result-wide v37

    move-wide/from16 v29, v37

    .line 1363
    move-object/from16 v31, v36

    const/16 v36, 0x0

    move/from16 v32, v36

    move-wide/from16 v36, v29

    move-wide/from16 v38, v3

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v36

    move-wide/from16 v33, v36

    move-object/from16 v36, v31

    move-wide/from16 v37, v33

    invoke-virtual/range {v36 .. v38}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " content="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v37, v15

    invoke-virtual/range {v37 .. v37}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x2026

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1362
    move-object/from16 v35, v36

    new-instance v36, Ljava/io/EOFException;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    move-object/from16 v38, v35

    invoke-direct/range {v37 .. v38}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    check-cast v36, Ljava/lang/Throwable;

    throw v36
.end method

.method public request(J)Z
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-wide v3, v3, Lokio/Buffer;->size:J

    move-wide v5, v1

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public require(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-wide v3, v3, Lokio/Buffer;->size:J

    move-wide v5, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    new-instance v3, Ljava/io/EOFException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 107
    :cond_0
    return-void
.end method

.method public select(Lokio/Options;)I
    .locals 11
    .param p1    # Lokio/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    const-string v7, "options"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    move-object v6, v0

    move-object v2, v6

    const/4 v6, 0x0

    move v3, v6

    .line 1326
    move-object v6, v2

    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lokio/internal/BufferKt;->selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v6

    move v4, v6

    .line 1327
    move v6, v4

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    const/4 v6, -0x1

    .line 282
    :goto_0
    move v0, v6

    return v0

    .line 1330
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lokio/Options;->getByteStrings$okio()[Lokio/ByteString;

    move-result-object v6

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    move v5, v6

    .line 1331
    move-object v6, v2

    move v7, v5

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 1332
    move v6, v4

    goto :goto_0
.end method

.method public final setSize$okio(J)V
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lokio/Buffer;->size:J

    return-void
.end method

.method public final sha1()Lokio/ByteString;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-1"

    invoke-direct {v1, v2}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-256"

    invoke-direct {v1, v2}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, v0

    const-string v2, "SHA-512"

    invoke-direct {v1, v2}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final size()J
    .locals 3
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lokio/Buffer;->size:J

    move-wide v0, v1

    return-wide v0
.end method

.method public skip(J)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 367
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v16, v2

    move-object/from16 v5, v16

    const/16 v16, 0x0

    move/from16 v6, v16

    .line 1472
    move-wide/from16 v16, v3

    move-wide/from16 v7, v16

    .line 1473
    :goto_0
    move-wide/from16 v16, v7

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_2

    .line 1474
    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    if-eqz v17, :cond_1

    move-object/from16 v9, v16

    .line 1476
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v10, v16

    const/16 v16, 0x0

    move/from16 v11, v16

    .line 1477
    move/from16 v16, v10

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v12, v16

    const/16 v16, 0x0

    move/from16 v14, v16

    move-wide/from16 v16, v7

    move-wide/from16 v18, v12

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    nop

    .line 1476
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v15, v16

    .line 1478
    move-object/from16 v16, v5

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    move/from16 v19, v15

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->setSize$okio(J)V

    .line 1479
    move-wide/from16 v16, v7

    move/from16 v18, v15

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v7, v16

    .line 1480
    move-object/from16 v16, v9

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    move/from16 v18, v15

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lokio/Segment;->pos:I

    .line 1482
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1483
    move-object/from16 v16, v5

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1484
    move-object/from16 v16, v9

    invoke-static/range {v16 .. v16}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1473
    :cond_0
    goto/16 :goto_0

    .line 1474
    :cond_1
    new-instance v16, Ljava/io/EOFException;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Ljava/io/EOFException;-><init>()V

    check-cast v16, Ljava/lang/Throwable;

    throw v16

    .line 1487
    :cond_2
    nop

    .line 367
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 564
    move-object v0, p0

    move-object v7, v0

    move-object v1, v7

    const/4 v7, 0x0

    move v2, v7

    .line 2115
    move-object v7, v1

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    const v9, 0x7fffffff

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    move v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size > Int.MAX_VALUE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 2116
    :cond_1
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v7

    .line 564
    move-object v0, v7

    return-object v0
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 22
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 566
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object v15, v2

    move-object v4, v15

    const/4 v15, 0x0

    move v5, v15

    .line 2117
    move v15, v3

    if-nez v15, :cond_0

    sget-object v15, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 566
    :goto_0
    move-object v2, v15

    return-object v2

    .line 2118
    :cond_0
    move-object v15, v4

    invoke-virtual {v15}, Lokio/Buffer;->size()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    move/from16 v19, v3

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v15 .. v20}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 2121
    const/4 v15, 0x0

    move v6, v15

    .line 2122
    const/4 v15, 0x0

    move v7, v15

    .line 2123
    move-object v15, v4

    iget-object v15, v15, Lokio/Buffer;->head:Lokio/Segment;

    move-object v8, v15

    .line 2124
    :goto_1
    move v15, v6

    move/from16 v16, v3

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 2125
    move-object v15, v8

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    if-nez v16, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget v15, v15, Lokio/Segment;->limit:I

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 2126
    new-instance v15, Ljava/lang/AssertionError;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const-string v17, "s.limit == s.pos"

    invoke-direct/range {v16 .. v17}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v15, Ljava/lang/Throwable;

    throw v15

    .line 2128
    :cond_2
    move v15, v6

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int v15, v15, v16

    move v6, v15

    .line 2129
    add-int/lit8 v7, v7, 0x1

    .line 2130
    move-object v15, v8

    iget-object v15, v15, Lokio/Segment;->next:Lokio/Segment;

    move-object v8, v15

    .line 2124
    goto :goto_1

    .line 2134
    :cond_3
    move v15, v7

    new-array v15, v15, [[B

    move-object v9, v15

    .line 2135
    move v15, v7

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    new-array v15, v15, [I

    move-object v10, v15

    .line 2136
    const/4 v15, 0x0

    move v6, v15

    .line 2137
    const/4 v15, 0x0

    move v7, v15

    .line 2138
    move-object v15, v4

    iget-object v15, v15, Lokio/Buffer;->head:Lokio/Segment;

    move-object v8, v15

    .line 2139
    :goto_2
    move v15, v6

    move/from16 v16, v3

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 2140
    move-object v15, v9

    move/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    if-nez v18, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    .line 2141
    move v15, v6

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int v15, v15, v16

    move v6, v15

    .line 2143
    move-object v15, v10

    move/from16 v16, v7

    move/from16 v11, v16

    move-object v12, v15

    const/4 v15, 0x0

    move v13, v15

    move v15, v6

    move/from16 v16, v3

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move v14, v15

    move-object v15, v12

    move/from16 v16, v11

    move/from16 v17, v14

    aput v17, v15, v16

    .line 2144
    move-object v15, v10

    move/from16 v16, v7

    move-object/from16 v17, v9

    check-cast v17, [Ljava/lang/Object;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    aput v17, v15, v16

    .line 2145
    move-object v15, v8

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lokio/Segment;->shared:Z

    .line 2146
    add-int/lit8 v7, v7, 0x1

    .line 2147
    move-object v15, v8

    iget-object v15, v15, Lokio/Segment;->next:Lokio/Segment;

    move-object v8, v15

    .line 2139
    goto :goto_2

    .line 2149
    :cond_5
    new-instance v15, Lokio/SegmentedByteString;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v9

    check-cast v17, [[B

    move-object/from16 v18, v10

    invoke-direct/range {v16 .. v18}, Lokio/SegmentedByteString;-><init>([[B[I)V

    check-cast v15, Lokio/ByteString;

    goto/16 :goto_0
.end method

.method public timeout()Lokio/Timeout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 495
    move-object v0, p0

    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 557
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final writableSegment$okio(I)Lokio/Segment;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    move v1, p1

    move-object v8, v0

    move-object v2, v8

    const/4 v8, 0x0

    move v3, v8

    .line 1806
    move v8, v1

    const/4 v9, 0x1

    if-lt v8, v9, :cond_0

    move v8, v1

    const/16 v9, 0x2000

    if-gt v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    move v8, v4

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v7, v8

    const-string v8, "unexpected capacity"

    move-object v6, v8

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 1808
    :cond_1
    move-object v8, v2

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v8, :cond_2

    .line 1809
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v8

    move-object v4, v8

    .line 1810
    move-object v8, v2

    move-object v9, v4

    iput-object v9, v8, Lokio/Buffer;->head:Lokio/Segment;

    .line 1811
    move-object v8, v4

    move-object v9, v4

    iput-object v9, v8, Lokio/Segment;->prev:Lokio/Segment;

    .line 1812
    move-object v8, v4

    move-object v9, v4

    iput-object v9, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 1813
    move-object v8, v4

    .line 452
    :goto_1
    move-object v0, v8

    return-object v0

    .line 1816
    :cond_2
    move-object v8, v2

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    if-nez v9, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    move-object v4, v8

    .line 1817
    move-object v8, v4

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    if-nez v9, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget v8, v8, Lokio/Segment;->limit:I

    move v9, v1

    add-int/2addr v8, v9

    const/16 v9, 0x2000

    if-gt v8, v9, :cond_5

    move-object v8, v4

    iget-boolean v8, v8, Lokio/Segment;->owner:Z

    if-nez v8, :cond_6

    .line 1818
    :cond_5
    move-object v8, v4

    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v8

    move-object v4, v8

    .line 1820
    :cond_6
    move-object v8, v4

    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 14
    .param p1    # Ljava/nio/ByteBuffer;
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

    move-object v8, v1

    const-string v9, "source"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    move v2, v8

    .line 410
    move v8, v2

    move v3, v8

    .line 411
    :goto_0
    move v8, v3

    if-lez v8, :cond_0

    .line 412
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v8

    move-object v4, v8

    .line 414
    const/16 v8, 0x2000

    move-object v9, v4

    iget v9, v9, Lokio/Segment;->limit:I

    rsub-int v8, v9, 0x2000

    move v6, v8

    const/4 v8, 0x0

    move v7, v8

    move v8, v3

    move v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v5, v8

    .line 415
    move-object v8, v1

    move-object v9, v4

    iget-object v9, v9, Lokio/Segment;->data:[B

    move-object v10, v4

    iget v10, v10, Lokio/Segment;->limit:I

    move v11, v5

    invoke-virtual {v8, v9, v10, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 417
    move v8, v3

    move v9, v5

    sub-int/2addr v8, v9

    move v3, v8

    .line 418
    move-object v8, v4

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget v9, v9, Lokio/Segment;->limit:I

    move v10, v5

    add-int/2addr v9, v10

    iput v9, v8, Lokio/Segment;->limit:I

    .line 411
    goto :goto_0

    .line 421
    :cond_0
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget-wide v9, v9, Lokio/Buffer;->size:J

    move v11, v2

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, v8, Lokio/Buffer;->size:J

    .line 422
    move v8, v2

    move v0, v8

    return v0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .locals 10
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    const-string v7, "byteString"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    move-object v6, v0

    move-object v2, v6

    .line 1488
    const/4 v6, 0x0

    move v3, v6

    .line 1489
    move-object v6, v1

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    move v4, v6

    const/4 v6, 0x0

    move v5, v6

    .line 1491
    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lokio/ByteString;->write$okio(Lokio/Buffer;II)V

    .line 1492
    move-object v6, v2

    .line 369
    move-object v0, v6

    return-object v0
.end method

.method public write(Lokio/ByteString;II)Lokio/Buffer;
    .locals 10
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    const-string v7, "byteString"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    move-object v6, v0

    move-object v4, v6

    const/4 v6, 0x0

    move v5, v6

    .line 1493
    move-object v6, v1

    move-object v7, v4

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lokio/ByteString;->write$okio(Lokio/Buffer;II)V

    .line 1494
    move-object v6, v4

    .line 372
    move-object v0, v6

    return-object v0
.end method

.method public write(Lokio/Source;J)Lokio/Buffer;
    .locals 15
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v10, v1

    const-string v11, "source"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    move-object v10, v0

    move-object v4, v10

    const/4 v10, 0x0

    move v5, v10

    .line 1660
    move-wide v10, v2

    move-wide v6, v10

    .line 1661
    :goto_0
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 1662
    move-object v10, v1

    move-object v11, v4

    move-wide v12, v6

    invoke-interface {v10, v11, v12, v13}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v10

    move-wide v8, v10

    .line 1663
    move-wide v10, v8

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    new-instance v10, Ljava/io/EOFException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/io/EOFException;-><init>()V

    check-cast v10, Ljava/lang/Throwable;

    throw v10

    .line 1664
    :cond_0
    move-wide v10, v6

    move-wide v12, v8

    sub-long/2addr v10, v12

    move-wide v6, v10

    .line 1661
    goto :goto_0

    .line 1666
    :cond_1
    move-object v10, v4

    .line 430
    move-object v0, v10

    return-object v0
.end method

.method public write([B)Lokio/Buffer;
    .locals 8
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string v5, "source"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    move-object v4, v0

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    .line 1631
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v4

    .line 399
    move-object v0, v4

    return-object v0
.end method

.method public write([BII)Lokio/Buffer;
    .locals 22
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v15, v3

    const-string v16, "source"

    invoke-static/range {v15 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    move-object v15, v2

    move-object v6, v15

    const/4 v15, 0x0

    move v7, v15

    .line 1632
    move v15, v4

    move v8, v15

    .line 1633
    move-object v15, v3

    array-length v15, v15

    int-to-long v15, v15

    move/from16 v17, v8

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move/from16 v19, v5

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v15 .. v20}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1635
    move v15, v8

    move/from16 v16, v5

    add-int v15, v15, v16

    move v9, v15

    .line 1636
    :goto_0
    move v15, v8

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 1637
    move-object v15, v6

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v15

    move-object v10, v15

    .line 1639
    move v15, v9

    move/from16 v16, v8

    sub-int v15, v15, v16

    move v11, v15

    const/16 v15, 0x2000

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v0, v16

    rsub-int v15, v0, 0x2000

    move v12, v15

    const/4 v15, 0x0

    move v13, v15

    move v15, v11

    move/from16 v16, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move v14, v15

    .line 1640
    move-object v15, v3

    .line 1641
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    .line 1642
    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    .line 1643
    move/from16 v18, v8

    .line 1644
    move/from16 v19, v8

    move/from16 v20, v14

    add-int v19, v19, v20

    .line 1640
    invoke-static/range {v15 .. v19}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    move-result-object v15

    .line 1647
    move v15, v8

    move/from16 v16, v14

    add-int v15, v15, v16

    move v8, v15

    .line 1648
    move-object v15, v10

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v17, v14

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lokio/Segment;->limit:I

    .line 1636
    goto :goto_0

    .line 1651
    :cond_0
    move-object v15, v6

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-virtual/range {v16 .. v16}, Lokio/Buffer;->size()J

    move-result-wide v16

    move/from16 v18, v5

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Lokio/Buffer;->setSize$okio(J)V

    .line 1652
    move-object v15, v6

    .line 405
    move-object v2, v15

    return-object v2
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v2

    check-cast v2, Lokio/BufferedSink;

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic write(Lokio/ByteString;II)Lokio/BufferedSink;
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write(Lokio/ByteString;II)Lokio/Buffer;

    move-result-object v4

    check-cast v4, Lokio/BufferedSink;

    move-object v0, v4

    return-object v0
.end method

.method public bridge synthetic write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write(Lokio/Source;J)Lokio/Buffer;

    move-result-object v4

    check-cast v4, Lokio/BufferedSink;

    move-object v0, v4

    return-object v0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v2

    check-cast v2, Lokio/BufferedSink;

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v4

    check-cast v4, Lokio/BufferedSink;

    move-object v0, v4

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 23
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v16, v3

    const-string v17, "source"

    invoke-static/range {v16 .. v17}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    move-object/from16 v16, v2

    move-object/from16 v6, v16

    const/16 v16, 0x0

    move/from16 v7, v16

    .line 1821
    move-wide/from16 v16, v4

    move-wide/from16 v8, v16

    .line 1822
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v16, 0x1

    :goto_0
    move/from16 v10, v16

    const/16 v16, 0x0

    move/from16 v11, v16

    const/16 v16, 0x0

    move/from16 v12, v16

    move/from16 v16, v10

    if-nez v16, :cond_1

    const/16 v16, 0x0

    move/from16 v13, v16

    const-string v16, "source == this"

    move-object/from16 v12, v16

    new-instance v16, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v16, Ljava/lang/Throwable;

    throw v16

    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 1823
    :cond_1
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lokio/Buffer;->size()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-wide/from16 v20, v8

    invoke-static/range {v16 .. v21}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1825
    :goto_1
    move-wide/from16 v16, v8

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_f

    .line 1827
    move-wide/from16 v16, v8

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    if-nez v19, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v19, v0

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    if-nez v20, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-gez v16, :cond_a

    .line 1828
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    if-nez v17, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v16, v0

    :goto_2
    move-object/from16 v10, v16

    .line 1829
    move-object/from16 v16, v10

    if-eqz v16, :cond_8

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lokio/Segment;->owner:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-wide/from16 v16, v8

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lokio/Segment;->shared:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    const/16 v18, 0x2000

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_8

    .line 1832
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    if-nez v17, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    move-object/from16 v17, v10

    move-wide/from16 v18, v8

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1833
    move-object/from16 v16, v3

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    move-wide/from16 v19, v8

    sub-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->setSize$okio(J)V

    .line 1834
    move-object/from16 v16, v6

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    move-wide/from16 v19, v8

    add-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->setSize$okio(J)V

    .line 454
    :goto_4
    return-void

    .line 1828
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1829
    :cond_7
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v18, v0

    goto :goto_3

    .line 1839
    :cond_8
    move-object/from16 v16, v3

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v17, v0

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    if-nez v18, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    move-wide/from16 v18, v8

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1840
    :cond_a
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v10, v16

    .line 1845
    move-object/from16 v16, v10

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    if-nez v17, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v14, v16

    .line 1846
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1847
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    if-nez v16, :cond_c

    .line 1848
    move-object/from16 v16, v6

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1849
    move-object/from16 v16, v10

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1850
    move-object/from16 v16, v10

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1855
    :goto_5
    move-object/from16 v16, v3

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    move-wide/from16 v19, v14

    sub-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->setSize$okio(J)V

    .line 1857
    move-object/from16 v16, v6

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    move-wide/from16 v19, v14

    add-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->setSize$okio(J)V

    .line 1858
    move-wide/from16 v16, v8

    move-wide/from16 v18, v14

    sub-long v16, v16, v18

    move-wide/from16 v8, v16

    .line 1825
    goto/16 :goto_1

    .line 1852
    :cond_c
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    if-nez v17, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    move-object/from16 v16, v0

    move-object/from16 v13, v16

    .line 1853
    move-object/from16 v16, v13

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    if-nez v17, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    move-object/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v16

    move-object/from16 v13, v16

    .line 1854
    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Lokio/Segment;->compact()V

    goto :goto_5

    .line 1860
    :cond_f
    nop

    goto/16 :goto_4
.end method

.method public writeAll(Lokio/Source;)J
    .locals 12
    .param p1    # Lokio/Source;
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

    move-object v8, v1

    const-string v9, "source"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    move-object v8, v0

    move-object v2, v8

    const/4 v8, 0x0

    move v3, v8

    .line 1653
    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 1654
    :goto_0
    nop

    .line 1655
    move-object v8, v1

    move-object v9, v2

    const/16 v10, 0x2000

    int-to-long v10, v10

    invoke-interface {v8, v9, v10, v11}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v8

    move-wide v6, v8

    .line 1656
    move-wide v8, v6

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1659
    move-wide v8, v4

    .line 426
    move-wide v0, v8

    return-wide v0

    .line 1657
    :cond_0
    move-wide v8, v4

    move-wide v10, v6

    add-long/2addr v8, v10

    move-wide v4, v8

    .line 1654
    goto :goto_0
.end method

.method public writeByte(I)Lokio/Buffer;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 432
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move-object v2, v6

    const/4 v6, 0x0

    move v3, v6

    .line 1667
    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v6

    move-object v4, v6

    .line 1668
    move-object v6, v4

    iget-object v6, v6, Lokio/Segment;->data:[B

    move-object v7, v4

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lokio/Segment;->limit:I

    move v11, v8

    move v8, v11

    move v9, v11

    move v5, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lokio/Segment;->limit:I

    move v7, v5

    move v8, v1

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1669
    move-object v6, v2

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->setSize$okio(J)V

    .line 1670
    move-object v6, v2

    .line 432
    move-object v0, v6

    return-object v0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v2

    check-cast v2, Lokio/BufferedSink;

    move-object v0, v2

    return-object v0
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .locals 21
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 446
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object v15, v2

    move-object v5, v15

    const/4 v15, 0x0

    move v6, v15

    .line 1703
    move-wide v15, v3

    move-wide v7, v15

    .line 1704
    move-wide v15, v7

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_0

    .line 1706
    move-object v15, v5

    const/16 v16, 0x30

    invoke-virtual/range {v15 .. v16}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v15

    .line 446
    :goto_0
    move-object v2, v15

    return-object v2

    .line 1709
    :cond_0
    const/4 v15, 0x0

    move v9, v15

    .line 1710
    move-wide v15, v7

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-gez v15, :cond_2

    .line 1711
    move-wide v15, v7

    neg-long v15, v15

    move-wide v7, v15

    .line 1712
    move-wide v15, v7

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-gez v15, :cond_1

    .line 1713
    move-object v15, v5

    const-string v16, "-9223372036854775808"

    invoke-virtual/range {v15 .. v16}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v15

    goto :goto_0

    .line 1715
    :cond_1
    const/4 v15, 0x1

    move v9, v15

    .line 1719
    :cond_2
    move-wide v15, v7

    const-wide/32 v17, 0x5f5e100

    cmp-long v15, v15, v17

    if-gez v15, :cond_b

    .line 1721
    move-wide v15, v7

    const-wide/16 v17, 0x2710

    cmp-long v15, v15, v17

    if-gez v15, :cond_7

    .line 1722
    move-wide v15, v7

    const-wide/16 v17, 0x64

    cmp-long v15, v15, v17

    if-gez v15, :cond_5

    .line 1723
    move-wide v15, v7

    const-wide/16 v17, 0xa

    cmp-long v15, v15, v17

    if-gez v15, :cond_4

    const/4 v15, 0x1

    .line 1745
    :goto_1
    move v10, v15

    .line 1747
    move v15, v9

    if-eqz v15, :cond_3

    .line 1748
    add-int/lit8 v10, v10, 0x1

    .line 1751
    :cond_3
    move-object v15, v5

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v15

    move-object v11, v15

    .line 1752
    move-object v15, v11

    iget-object v15, v15, Lokio/Segment;->data:[B

    move-object v12, v15

    .line 1753
    move-object v15, v11

    iget v15, v15, Lokio/Segment;->limit:I

    move/from16 v16, v10

    add-int v15, v15, v16

    move v13, v15

    .line 1754
    :goto_2
    move-wide v15, v7

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_16

    .line 1755
    move-wide v15, v7

    const/16 v17, 0xa

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    rem-long v15, v15, v17

    long-to-int v15, v15

    move v14, v15

    .line 1756
    move-object v15, v12

    add-int/lit8 v13, v13, -0x1

    move/from16 v16, v13

    invoke-static {}, Lokio/internal/BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v17

    move/from16 v18, v14

    aget-byte v17, v17, v18

    aput-byte v17, v15, v16

    .line 1757
    move-wide v15, v7

    const/16 v17, 0xa

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    div-long v15, v15, v17

    move-wide v7, v15

    .line 1754
    goto :goto_2

    .line 1724
    :cond_4
    const/4 v15, 0x2

    .line 1723
    goto :goto_1

    .line 1725
    :cond_5
    move-wide v15, v7

    const-wide/16 v17, 0x3e8

    cmp-long v15, v15, v17

    if-gez v15, :cond_6

    const/4 v15, 0x3

    :goto_3
    goto :goto_1

    .line 1726
    :cond_6
    const/4 v15, 0x4

    goto :goto_3

    .line 1727
    :cond_7
    move-wide v15, v7

    const-wide/32 v17, 0xf4240

    cmp-long v15, v15, v17

    if-gez v15, :cond_9

    .line 1728
    move-wide v15, v7

    const-wide/32 v17, 0x186a0

    cmp-long v15, v15, v17

    if-gez v15, :cond_8

    const/4 v15, 0x5

    .line 1730
    :goto_4
    goto :goto_1

    .line 1729
    :cond_8
    const/4 v15, 0x6

    .line 1728
    goto :goto_4

    .line 1730
    :cond_9
    move-wide v15, v7

    const-wide/32 v17, 0x989680

    cmp-long v15, v15, v17

    if-gez v15, :cond_a

    const/4 v15, 0x7

    goto :goto_4

    .line 1731
    :cond_a
    const/16 v15, 0x8

    goto :goto_4

    .line 1732
    :cond_b
    move-wide v15, v7

    const-wide v17, 0xe8d4a51000L

    cmp-long v15, v15, v17

    if-gez v15, :cond_f

    .line 1733
    move-wide v15, v7

    const-wide v17, 0x2540be400L

    cmp-long v15, v15, v17

    if-gez v15, :cond_d

    .line 1734
    move-wide v15, v7

    const-wide/32 v17, 0x3b9aca00

    cmp-long v15, v15, v17

    if-gez v15, :cond_c

    const/16 v15, 0x9

    goto/16 :goto_1

    .line 1735
    :cond_c
    const/16 v15, 0xa

    .line 1734
    goto/16 :goto_1

    .line 1736
    :cond_d
    move-wide v15, v7

    const-wide v17, 0x174876e800L

    cmp-long v15, v15, v17

    if-gez v15, :cond_e

    const/16 v15, 0xb

    :goto_5
    goto/16 :goto_1

    .line 1737
    :cond_e
    const/16 v15, 0xc

    goto :goto_5

    .line 1738
    :cond_f
    move-wide v15, v7

    const-wide v17, 0x38d7ea4c68000L

    cmp-long v15, v15, v17

    if-gez v15, :cond_12

    .line 1739
    move-wide v15, v7

    const-wide v17, 0x9184e72a000L

    cmp-long v15, v15, v17

    if-gez v15, :cond_10

    const/16 v15, 0xd

    goto/16 :goto_1

    .line 1740
    :cond_10
    move-wide v15, v7

    const-wide v17, 0x5af3107a4000L

    cmp-long v15, v15, v17

    if-gez v15, :cond_11

    const/16 v15, 0xe

    :goto_6
    goto/16 :goto_1

    .line 1741
    :cond_11
    const/16 v15, 0xf

    goto :goto_6

    .line 1742
    :cond_12
    move-wide v15, v7

    const-wide v17, 0x16345785d8a0000L

    cmp-long v15, v15, v17

    if-gez v15, :cond_14

    .line 1743
    move-wide v15, v7

    const-wide v17, 0x2386f26fc10000L

    cmp-long v15, v15, v17

    if-gez v15, :cond_13

    const/16 v15, 0x10

    goto/16 :goto_1

    .line 1744
    :cond_13
    const/16 v15, 0x11

    .line 1743
    goto/16 :goto_1

    .line 1745
    :cond_14
    move-wide v15, v7

    const-wide v17, 0xde0b6b3a7640000L

    cmp-long v15, v15, v17

    if-gez v15, :cond_15

    const/16 v15, 0x12

    goto/16 :goto_1

    .line 1746
    :cond_15
    const/16 v15, 0x13

    goto/16 :goto_1

    .line 1759
    :cond_16
    move v15, v9

    if-eqz v15, :cond_17

    .line 1760
    move-object v15, v12

    add-int/lit8 v13, v13, -0x1

    move/from16 v16, v13

    const/16 v17, 0x2d

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v16

    .line 1763
    :cond_17
    move-object v15, v11

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v17, v10

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lokio/Segment;->limit:I

    .line 1764
    move-object v15, v5

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-virtual/range {v16 .. v16}, Lokio/Buffer;->size()J

    move-result-wide v16

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Lokio/Buffer;->setSize$okio(J)V

    .line 1765
    move-object v15, v5

    goto/16 :goto_0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v3

    check-cast v3, Lokio/BufferedSink;

    move-object v0, v3

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .locals 24
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 449
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v16, v2

    move-object/from16 v5, v16

    const/16 v16, 0x0

    move/from16 v6, v16

    .line 1766
    move-wide/from16 v16, v3

    move-wide/from16 v7, v16

    .line 1767
    move-wide/from16 v16, v7

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_0

    .line 1769
    move-object/from16 v16, v5

    const/16 v17, 0x30

    invoke-virtual/range {v16 .. v17}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v16

    .line 449
    :goto_0
    move-object/from16 v2, v16

    return-object v2

    .line 1774
    :cond_0
    move-wide/from16 v16, v7

    move-wide/from16 v9, v16

    .line 1775
    move-wide/from16 v16, v9

    move-wide/from16 v18, v9

    const/16 v20, 0x1

    ushr-long v18, v18, v20

    or-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1776
    move-wide/from16 v16, v9

    move-wide/from16 v18, v9

    const/16 v20, 0x2

    ushr-long v18, v18, v20

    or-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1777
    move-wide/from16 v16, v9

    move-wide/from16 v18, v9

    const/16 v20, 0x4

    ushr-long v18, v18, v20

    or-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1778
    move-wide/from16 v16, v9

    move-wide/from16 v18, v9

    const/16 v20, 0x8

    ushr-long v18, v18, v20

    or-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1779
    move-wide/from16 v16, v9

    move-wide/from16 v18, v9

    const/16 v20, 0x10

    ushr-long v18, v18, v20

    or-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1780
    move-wide/from16 v16, v9

    move-wide/from16 v18, v9

    const/16 v20, 0x20

    ushr-long v18, v18, v20

    or-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1784
    move-wide/from16 v16, v9

    move-wide/from16 v18, v9

    const/16 v20, 0x1

    ushr-long v18, v18, v20

    const-wide v20, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v18, v18, v20

    sub-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1785
    move-wide/from16 v16, v9

    const/16 v18, 0x2

    ushr-long v16, v16, v18

    const-wide v18, 0x3333333333333333L    # 4.667261458395856E-62

    and-long v16, v16, v18

    move-wide/from16 v18, v9

    const-wide v20, 0x3333333333333333L    # 4.667261458395856E-62

    and-long v18, v18, v20

    add-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1786
    move-wide/from16 v16, v9

    const/16 v18, 0x4

    ushr-long v16, v16, v18

    move-wide/from16 v18, v9

    add-long v16, v16, v18

    const-wide v18, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1787
    move-wide/from16 v16, v9

    move-wide/from16 v18, v9

    const/16 v20, 0x8

    ushr-long v18, v18, v20

    add-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1788
    move-wide/from16 v16, v9

    move-wide/from16 v18, v9

    const/16 v20, 0x10

    ushr-long v18, v18, v20

    add-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1789
    move-wide/from16 v16, v9

    const-wide/16 v18, 0x3f

    and-long v16, v16, v18

    move-wide/from16 v18, v9

    const/16 v20, 0x20

    ushr-long v18, v18, v20

    const-wide/16 v20, 0x3f

    and-long v18, v18, v20

    add-long v16, v16, v18

    move-wide/from16 v9, v16

    .line 1792
    move-wide/from16 v16, v9

    const/16 v18, 0x3

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    const/16 v18, 0x4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v11, v16

    .line 1794
    move-object/from16 v16, v5

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v16

    move-object/from16 v12, v16

    .line 1795
    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v13, v16

    .line 1796
    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v17, v11

    add-int v16, v16, v17

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v14, v16

    .line 1797
    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v15, v16

    .line 1798
    :goto_1
    move/from16 v16, v14

    move/from16 v17, v15

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 1799
    move-object/from16 v16, v13

    move/from16 v17, v14

    invoke-static {}, Lokio/internal/BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v18

    move-wide/from16 v19, v7

    const-wide/16 v21, 0xf

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    aget-byte v18, v18, v19

    aput-byte v18, v16, v17

    .line 1800
    move-wide/from16 v16, v7

    const/16 v18, 0x4

    ushr-long v16, v16, v18

    move-wide/from16 v7, v16

    .line 1801
    add-int/lit8 v14, v14, -0x1

    .line 1798
    goto :goto_1

    .line 1803
    :cond_1
    move-object/from16 v16, v12

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    move/from16 v18, v11

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lokio/Segment;->limit:I

    .line 1804
    move-object/from16 v16, v5

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    move/from16 v19, v11

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->setSize$okio(J)V

    .line 1805
    move-object/from16 v16, v5

    goto/16 :goto_0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v3

    check-cast v3, Lokio/BufferedSink;

    move-object v0, v3

    return-object v0
.end method

.method public writeInt(I)Lokio/Buffer;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 438
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    move-object v2, v7

    const/4 v7, 0x0

    move v3, v7

    .line 1679
    move-object v7, v2

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v7

    move-object v4, v7

    .line 1680
    move-object v7, v4

    iget-object v7, v7, Lokio/Segment;->data:[B

    move-object v5, v7

    .line 1681
    move-object v7, v4

    iget v7, v7, Lokio/Segment;->limit:I

    move v6, v7

    .line 1682
    move-object v7, v5

    move v8, v6

    add-int/lit8 v6, v6, 0x1

    move v9, v1

    const/16 v10, 0x18

    ushr-int/lit8 v9, v9, 0x18

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1683
    move-object v7, v5

    move v8, v6

    add-int/lit8 v6, v6, 0x1

    move v9, v1

    const/16 v10, 0x10

    ushr-int/lit8 v9, v9, 0x10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1684
    move-object v7, v5

    move v8, v6

    add-int/lit8 v6, v6, 0x1

    move v9, v1

    const/16 v10, 0x8

    ushr-int/lit8 v9, v9, 0x8

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1685
    move-object v7, v5

    move v8, v6

    add-int/lit8 v6, v6, 0x1

    move v9, v1

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1686
    move-object v7, v4

    move v8, v6

    iput v8, v7, Lokio/Segment;->limit:I

    .line 1687
    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->setSize$okio(J)V

    .line 1688
    move-object v7, v2

    .line 438
    move-object v0, v7

    return-object v0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v2

    check-cast v2, Lokio/BufferedSink;

    move-object v0, v2

    return-object v0
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lokio/-Util;->reverseBytes(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v2

    check-cast v2, Lokio/BufferedSink;

    move-object v0, v2

    return-object v0
.end method

.method public writeLong(J)Lokio/Buffer;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    move-wide/from16 v1, p1

    move-object v8, v0

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    .line 1689
    move-object v8, v3

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v8

    move-object v5, v8

    .line 1690
    move-object v8, v5

    iget-object v8, v8, Lokio/Segment;->data:[B

    move-object v6, v8

    .line 1691
    move-object v8, v5

    iget v8, v8, Lokio/Segment;->limit:I

    move v7, v8

    .line 1692
    move-object v8, v6

    move v9, v7

    add-int/lit8 v7, v7, 0x1

    move-wide v10, v1

    const/16 v12, 0x38

    ushr-long/2addr v10, v12

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1693
    move-object v8, v6

    move v9, v7

    add-int/lit8 v7, v7, 0x1

    move-wide v10, v1

    const/16 v12, 0x30

    ushr-long/2addr v10, v12

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1694
    move-object v8, v6

    move v9, v7

    add-int/lit8 v7, v7, 0x1

    move-wide v10, v1

    const/16 v12, 0x28

    ushr-long/2addr v10, v12

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1695
    move-object v8, v6

    move v9, v7

    add-int/lit8 v7, v7, 0x1

    move-wide v10, v1

    const/16 v12, 0x20

    ushr-long/2addr v10, v12

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1696
    move-object v8, v6

    move v9, v7

    add-int/lit8 v7, v7, 0x1

    move-wide v10, v1

    const/16 v12, 0x18

    ushr-long/2addr v10, v12

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1697
    move-object v8, v6

    move v9, v7

    add-int/lit8 v7, v7, 0x1

    move-wide v10, v1

    const/16 v12, 0x10

    ushr-long/2addr v10, v12

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1698
    move-object v8, v6

    move v9, v7

    add-int/lit8 v7, v7, 0x1

    move-wide v10, v1

    const/16 v12, 0x8

    ushr-long/2addr v10, v12

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1699
    move-object v8, v6

    move v9, v7

    add-int/lit8 v7, v7, 0x1

    move-wide v10, v1

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1700
    move-object v8, v5

    move v9, v7

    iput v9, v8, Lokio/Segment;->limit:I

    .line 1701
    move-object v8, v3

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x8

    add-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 1702
    move-object v8, v3

    .line 442
    move-object v0, v8

    return-object v0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v3

    check-cast v3, Lokio/BufferedSink;

    move-object v0, v3

    return-object v0
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 444
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lokio/-Util;->reverseBytes(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v3

    check-cast v3, Lokio/BufferedSink;

    move-object v0, v3

    return-object v0
.end method

.method public writeShort(I)Lokio/Buffer;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    move-object v2, v7

    const/4 v7, 0x0

    move v3, v7

    .line 1671
    move-object v7, v2

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v7

    move-object v4, v7

    .line 1672
    move-object v7, v4

    iget-object v7, v7, Lokio/Segment;->data:[B

    move-object v5, v7

    .line 1673
    move-object v7, v4

    iget v7, v7, Lokio/Segment;->limit:I

    move v6, v7

    .line 1674
    move-object v7, v5

    move v8, v6

    add-int/lit8 v6, v6, 0x1

    move v9, v1

    const/16 v10, 0x8

    ushr-int/lit8 v9, v9, 0x8

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1675
    move-object v7, v5

    move v8, v6

    add-int/lit8 v6, v6, 0x1

    move v9, v1

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1676
    move-object v7, v4

    move v8, v6

    iput v8, v7, Lokio/Segment;->limit:I

    .line 1677
    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->setSize$okio(J)V

    .line 1678
    move-object v7, v2

    .line 434
    move-object v0, v7

    return-object v0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v2

    check-cast v2, Lokio/BufferedSink;

    move-object v0, v2

    return-object v0
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 436
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    int-to-short v3, v3

    invoke-static {v3}, Lokio/-Util;->reverseBytes(S)S

    move-result v3

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v2

    check-cast v2, Lokio/BufferedSink;

    move-object v0, v2

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v1

    const-string v10, "string"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v4

    const-string v10, "charset"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    move v9, v2

    if-ltz v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    move v9, v5

    if-nez v9, :cond_1

    const/4 v9, 0x0

    move v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "beginIndex < 0: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 392
    :cond_1
    move v9, v3

    move v10, v2

    if-lt v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    move v9, v5

    if-nez v9, :cond_3

    const/4 v9, 0x0

    move v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "endIndex < beginIndex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " < "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 393
    :cond_3
    move v9, v3

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_2
    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    move v9, v5

    if-nez v9, :cond_5

    const/4 v9, 0x0

    move v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "endIndex > string.length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Throwable;

    throw v9

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 394
    :cond_5
    move-object v9, v4

    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v9

    move-object v0, v9

    .line 396
    :goto_3
    return-object v0

    .line 395
    :cond_6
    move-object v9, v1

    move-object v6, v9

    const/4 v9, 0x0

    move v7, v9

    move-object v9, v6

    move v10, v2

    move v11, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v9

    const/4 v9, 0x0

    move v7, v9

    move-object v9, v6

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    if-nez v10, :cond_7

    new-instance v10, Lkotlin/TypeCastException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string v12, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v11, v12}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_7
    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v9

    .line 396
    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x0

    move-object v12, v5

    array-length v12, v12

    invoke-virtual {v9, v10, v11, v12}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v9

    move-object v0, v9

    goto :goto_3
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string v4, "string"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    const-string v4, "charset"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 383
    move-object v7, v2

    .line 382
    invoke-virtual {v3, v4, v5, v6, v7}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v3

    .line 383
    move-object v0, v3

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 10

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v5

    check-cast v5, Lokio/BufferedSink;

    move-object v0, v5

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v3

    check-cast v3, Lokio/BufferedSink;

    move-object v0, v3

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 8
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lokio/Buffer;->writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 22
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object v15, v3

    const-string v16, "out"

    invoke-static/range {v15 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    move-wide v15, v4

    move-wide v6, v15

    .line 186
    move-object v15, v2

    iget-wide v15, v15, Lokio/Buffer;->size:J

    const-wide/16 v17, 0x0

    move-wide/from16 v19, v6

    invoke-static/range {v15 .. v20}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 188
    move-object v15, v2

    iget-object v15, v15, Lokio/Buffer;->head:Lokio/Segment;

    move-object v8, v15

    .line 189
    :goto_0
    move-wide v15, v6

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_2

    .line 190
    move-object v15, v8

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    if-nez v16, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget v15, v15, Lokio/Segment;->limit:I

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v10, v15

    const/4 v15, 0x0

    move v11, v15

    .line 1053
    move v15, v10

    int-to-long v15, v15

    move-wide v12, v15

    const/4 v15, 0x0

    move v14, v15

    move-wide v15, v6

    move-wide/from16 v17, v12

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    nop

    .line 190
    long-to-int v15, v15

    move v9, v15

    .line 191
    move-object v15, v3

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v17, v0

    move/from16 v18, v9

    invoke-virtual/range {v15 .. v18}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    move-object v15, v8

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->pos:I

    move/from16 v16, v0

    move/from16 v17, v9

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lokio/Segment;->pos:I

    .line 194
    move-object v15, v2

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v0, v16

    iget-wide v0, v0, Lokio/Buffer;->size:J

    move-wide/from16 v16, v0

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lokio/Buffer;->size:J

    .line 195
    move-wide v15, v6

    move/from16 v17, v9

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    move-wide v6, v15

    .line 197
    move-object v15, v8

    iget v15, v15, Lokio/Segment;->pos:I

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 198
    move-object v15, v8

    move-object v10, v15

    .line 199
    move-object v15, v10

    invoke-virtual {v15}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v15

    move-object v8, v15

    .line 200
    move-object v15, v2

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iput-object v0, v15, Lokio/Buffer;->head:Lokio/Segment;

    .line 201
    move-object v15, v10

    invoke-static {v15}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 189
    :cond_1
    goto/16 :goto_0

    .line 205
    :cond_2
    move-object v15, v2

    move-object v2, v15

    return-object v2
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .locals 6
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

    const-string v3, "string"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .locals 22
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v16, v3

    const-string v17, "string"

    invoke-static/range {v16 .. v17}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    move-object/from16 v16, v2

    move-object/from16 v6, v16

    const/16 v16, 0x0

    move/from16 v7, v16

    .line 1495
    move/from16 v16, v4

    if-ltz v16, :cond_0

    const/16 v16, 0x1

    :goto_0
    move/from16 v8, v16

    const/16 v16, 0x0

    move/from16 v9, v16

    const/16 v16, 0x0

    move/from16 v10, v16

    move/from16 v16, v8

    if-nez v16, :cond_1

    const/16 v16, 0x0

    move/from16 v11, v16

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "beginIndex < 0: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, v16

    new-instance v16, Ljava/lang/IllegalArgumentException;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v16, Ljava/lang/Throwable;

    throw v16

    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 1496
    :cond_1
    move/from16 v16, v5

    move/from16 v17, v4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    const/16 v16, 0x1

    :goto_1
    move/from16 v8, v16

    const/16 v16, 0x0

    move/from16 v9, v16

    const/16 v16, 0x0

    move/from16 v10, v16

    move/from16 v16, v8

    if-nez v16, :cond_3

    const/16 v16, 0x0

    move/from16 v11, v16

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "endIndex < beginIndex: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " < "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, v16

    new-instance v16, Ljava/lang/IllegalArgumentException;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v16, Ljava/lang/Throwable;

    throw v16

    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 1497
    :cond_3
    move/from16 v16, v5

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_4

    const/16 v16, 0x1

    :goto_2
    move/from16 v8, v16

    const/16 v16, 0x0

    move/from16 v9, v16

    const/16 v16, 0x0

    move/from16 v10, v16

    move/from16 v16, v8

    if-nez v16, :cond_5

    const/16 v16, 0x0

    move/from16 v11, v16

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "endIndex > string.length: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, v16

    new-instance v16, Ljava/lang/IllegalArgumentException;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v16, Ljava/lang/Throwable;

    throw v16

    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 1500
    :cond_5
    move/from16 v16, v4

    move/from16 v8, v16

    .line 1501
    :goto_3
    move/from16 v16, v8

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    .line 1502
    move-object/from16 v16, v3

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v9, v16

    .line 1504
    nop

    .line 1505
    move/from16 v16, v9

    const/16 v17, 0x80

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 1506
    move-object/from16 v16, v6

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v16

    move-object/from16 v10, v16

    .line 1507
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v11, v16

    .line 1508
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v16, v0

    move/from16 v17, v8

    sub-int v16, v16, v17

    move/from16 v12, v16

    .line 1509
    const/16 v16, 0x2000

    move/from16 v17, v12

    move/from16 v0, v17

    rsub-int v0, v0, 0x2000

    move/from16 v16, v0

    move/from16 v13, v16

    const/16 v16, 0x0

    move/from16 v14, v16

    move/from16 v16, v5

    move/from16 v17, v13

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v15, v16

    .line 1512
    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v8

    add-int/lit8 v8, v8, 0x1

    add-int v17, v17, v18

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 1516
    :goto_4
    move/from16 v16, v8

    move/from16 v17, v15

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 1517
    move-object/from16 v16, v3

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v9, v16

    .line 1518
    move/from16 v16, v9

    const/16 v17, 0x80

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    .line 1522
    :cond_6
    move/from16 v16, v8

    move/from16 v17, v12

    add-int v16, v16, v17

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 1523
    move-object/from16 v16, v10

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    move/from16 v18, v13

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lokio/Segment;->limit:I

    .line 1524
    move-object/from16 v16, v6

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    move/from16 v19, v13

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->setSize$okio(J)V

    .line 1577
    :goto_5
    goto/16 :goto_3

    .line 1519
    :cond_7
    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v8

    add-int/lit8 v8, v8, 0x1

    add-int v17, v17, v18

    move/from16 v18, v9

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 1516
    goto :goto_4

    .line 1527
    :cond_8
    move/from16 v16, v9

    const/16 v17, 0x800

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 1529
    move-object/from16 v16, v6

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v16

    move-object/from16 v10, v16

    .line 1531
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    move/from16 v18, v9

    const/16 v19, 0x6

    shr-int/lit8 v18, v18, 0x6

    const/16 v19, 0xc0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0xc0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 1532
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v9

    const/16 v19, 0x3f

    and-int/lit8 v18, v18, 0x3f

    const/16 v19, 0x80

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 1534
    move-object/from16 v16, v10

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lokio/Segment;->limit:I

    .line 1535
    move-object/from16 v16, v6

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    const-wide/16 v19, 0x2

    add-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->setSize$okio(J)V

    .line 1536
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 1539
    :cond_9
    move/from16 v16, v9

    const v17, 0xd800

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_a

    move/from16 v16, v9

    const v17, 0xdfff

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_b

    .line 1541
    :cond_a
    move-object/from16 v16, v6

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v16

    move-object/from16 v10, v16

    .line 1543
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    move/from16 v18, v9

    const/16 v19, 0xc

    shr-int/lit8 v18, v18, 0xc

    const/16 v19, 0xe0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0xe0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 1544
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v9

    const/16 v19, 0x6

    shr-int/lit8 v18, v18, 0x6

    const/16 v19, 0x3f

    and-int/lit8 v18, v18, 0x3f

    const/16 v19, 0x80

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 1545
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v18, v9

    const/16 v19, 0x3f

    and-int/lit8 v18, v18, 0x3f

    const/16 v19, 0x80

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 1547
    move-object/from16 v16, v10

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lokio/Segment;->limit:I

    .line 1548
    move-object/from16 v16, v6

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    const-wide/16 v19, 0x3

    add-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->setSize$okio(J)V

    .line 1549
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 1556
    :cond_b
    move/from16 v16, v8

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    move-object/from16 v16, v3

    move/from16 v17, v8

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    :goto_6
    move/from16 v10, v16

    .line 1557
    move/from16 v16, v9

    const v17, 0xdbff

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    const v16, 0xdfff

    const v17, 0xdc00

    move/from16 v18, v10

    move/from16 v11, v18

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_e

    move/from16 v17, v11

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    .line 1558
    :cond_c
    :goto_7
    move-object/from16 v16, v6

    const/16 v17, 0x3f

    invoke-virtual/range {v16 .. v17}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v16

    .line 1559
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 1556
    :cond_d
    const/16 v16, 0x0

    goto :goto_6

    :cond_e
    goto :goto_7

    .line 1564
    :cond_f
    const/high16 v16, 0x10000

    move/from16 v17, v9

    const/16 v18, 0x3ff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v17, v0

    const/16 v18, 0xa

    shl-int/lit8 v17, v17, 0xa

    move/from16 v18, v10

    const/16 v19, 0x3ff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v18, v0

    or-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v11, v16

    .line 1567
    move-object/from16 v16, v6

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v16

    move-object/from16 v12, v16

    .line 1569
    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    move/from16 v18, v11

    const/16 v19, 0x12

    shr-int/lit8 v18, v18, 0x12

    const/16 v19, 0xf0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 1570
    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v11

    const/16 v19, 0xc

    shr-int/lit8 v18, v18, 0xc

    const/16 v19, 0x3f

    and-int/lit8 v18, v18, 0x3f

    const/16 v19, 0x80

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 1571
    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    move/from16 v18, v11

    const/16 v19, 0x6

    shr-int/lit8 v18, v18, 0x6

    const/16 v19, 0x3f

    and-int/lit8 v18, v18, 0x3f

    const/16 v19, 0x80

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 1572
    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget-object v0, v0, Lokio/Segment;->data:[B

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v18, v11

    const/16 v19, 0x3f

    and-int/lit8 v18, v18, 0x3f

    const/16 v19, 0x80

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 1574
    move-object/from16 v16, v12

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v0, v17

    iget v0, v0, Lokio/Segment;->limit:I

    move/from16 v17, v0

    const/16 v18, 0x4

    add-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lokio/Segment;->limit:I

    .line 1575
    move-object/from16 v16, v6

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    invoke-virtual/range {v17 .. v17}, Lokio/Buffer;->size()J

    move-result-wide v17

    const-wide/16 v19, 0x4

    add-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Lokio/Buffer;->setSize$okio(J)V

    .line 1576
    move/from16 v16, v8

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    move/from16 v8, v16

    goto/16 :goto_5

    .line 1582
    :cond_10
    move-object/from16 v16, v6

    .line 377
    move-object/from16 v2, v16

    return-object v2
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v2

    check-cast v2, Lokio/BufferedSink;

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v4

    check-cast v4, Lokio/BufferedSink;

    move-object v0, v4

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 380
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move-object v2, v5

    const/4 v5, 0x0

    move v3, v5

    .line 1583
    nop

    .line 1584
    move v5, v1

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    .line 1586
    move-object v5, v2

    move v6, v1

    invoke-virtual {v5, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v5

    .line 1630
    :goto_0
    move-object v5, v2

    .line 380
    move-object v0, v5

    return-object v0

    .line 1588
    :cond_0
    move v5, v1

    const/16 v6, 0x800

    if-ge v5, v6, :cond_1

    .line 1590
    move-object v5, v2

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v5

    move-object v4, v5

    .line 1592
    move-object v5, v4

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v4

    iget v6, v6, Lokio/Segment;->limit:I

    move v7, v1

    const/4 v8, 0x6

    shr-int/lit8 v7, v7, 0x6

    const/16 v8, 0xc0

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1593
    move-object v5, v4

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v4

    iget v6, v6, Lokio/Segment;->limit:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v1

    const/16 v8, 0x3f

    and-int/lit8 v7, v7, 0x3f

    const/16 v8, 0x80

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1595
    move-object v5, v4

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokio/Segment;->limit:I

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    iput v6, v5, Lokio/Segment;->limit:I

    .line 1596
    move-object v5, v2

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->setSize$okio(J)V

    goto :goto_0

    .line 1598
    :cond_1
    const v5, 0xdfff

    const v6, 0xd800

    move v7, v1

    move v4, v7

    move v7, v4

    if-le v6, v7, :cond_3

    .line 1602
    :cond_2
    move v5, v1

    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_4

    .line 1604
    move-object v5, v2

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v5

    move-object v4, v5

    .line 1606
    move-object v5, v4

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v4

    iget v6, v6, Lokio/Segment;->limit:I

    move v7, v1

    const/16 v8, 0xc

    shr-int/lit8 v7, v7, 0xc

    const/16 v8, 0xe0

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1607
    move-object v5, v4

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v4

    iget v6, v6, Lokio/Segment;->limit:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v1

    const/4 v8, 0x6

    shr-int/lit8 v7, v7, 0x6

    const/16 v8, 0x3f

    and-int/lit8 v7, v7, 0x3f

    const/16 v8, 0x80

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1608
    move-object v5, v4

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v4

    iget v6, v6, Lokio/Segment;->limit:I

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v7, v1

    const/16 v8, 0x3f

    and-int/lit8 v7, v7, 0x3f

    const/16 v8, 0x80

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1610
    move-object v5, v4

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokio/Segment;->limit:I

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    iput v6, v5, Lokio/Segment;->limit:I

    .line 1611
    move-object v5, v2

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->setSize$okio(J)V

    goto/16 :goto_0

    .line 1598
    :cond_3
    move v6, v4

    if-lt v5, v6, :cond_2

    .line 1600
    move-object v5, v2

    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v5

    goto/16 :goto_0

    .line 1613
    :cond_4
    move v5, v1

    const v6, 0x10ffff

    if-gt v5, v6, :cond_5

    .line 1615
    move-object v5, v2

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v5

    move-object v4, v5

    .line 1617
    move-object v5, v4

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v4

    iget v6, v6, Lokio/Segment;->limit:I

    move v7, v1

    const/16 v8, 0x12

    shr-int/lit8 v7, v7, 0x12

    const/16 v8, 0xf0

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1618
    move-object v5, v4

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v4

    iget v6, v6, Lokio/Segment;->limit:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v1

    const/16 v8, 0xc

    shr-int/lit8 v7, v7, 0xc

    const/16 v8, 0x3f

    and-int/lit8 v7, v7, 0x3f

    const/16 v8, 0x80

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1619
    move-object v5, v4

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v4

    iget v6, v6, Lokio/Segment;->limit:I

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v7, v1

    const/4 v8, 0x6

    shr-int/lit8 v7, v7, 0x6

    const/16 v8, 0x3f

    and-int/lit8 v7, v7, 0x3f

    const/16 v8, 0x80

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1620
    move-object v5, v4

    iget-object v5, v5, Lokio/Segment;->data:[B

    move-object v6, v4

    iget v6, v6, Lokio/Segment;->limit:I

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    move v7, v1

    const/16 v8, 0x3f

    and-int/lit8 v7, v7, 0x3f

    const/16 v8, 0x80

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1622
    move-object v5, v4

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lokio/Segment;->limit:I

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    iput v6, v5, Lokio/Segment;->limit:I

    .line 1623
    move-object v5, v2

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->setSize$okio(J)V

    goto/16 :goto_0

    .line 1626
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected code point: 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-static {v8}, Lokio/-Util;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v2

    check-cast v2, Lokio/BufferedSink;

    move-object v0, v2

    return-object v0
.end method
