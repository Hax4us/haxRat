.class public final Lkotlin/text/Charsets;
.super Ljava/lang/Object;
.source "Charsets.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00048G\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u00048G\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\u00048G\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000bR\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlin/text/Charsets;",
        "",
        "()V",
        "ISO_8859_1",
        "Ljava/nio/charset/Charset;",
        "US_ASCII",
        "UTF_16",
        "UTF_16BE",
        "UTF_16LE",
        "UTF_32",
        "UTF32",
        "()Ljava/nio/charset/Charset;",
        "UTF_32BE",
        "UTF32_BE",
        "UTF_32LE",
        "UTF32_LE",
        "UTF_8",
        "utf_32",
        "utf_32be",
        "utf_32le",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/text/Charsets;

.field public static final ISO_8859_1:Ljava/nio/charset/Charset;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final US_ASCII:Ljava/nio/charset/Charset;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UTF_16:Ljava/nio/charset/Charset;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UTF_16BE:Ljava/nio/charset/Charset;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UTF_16LE:Ljava/nio/charset/Charset;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UTF_8:Ljava/nio/charset/Charset;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static utf_32:Ljava/nio/charset/Charset;

.field private static utf_32be:Ljava/nio/charset/Charset;

.field private static utf_32le:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    new-instance v1, Lkotlin/text/Charsets;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lkotlin/text/Charsets;-><init>()V

    move-object v0, v1

    move-object v1, v0

    sput-object v1, Lkotlin/text/Charsets;->INSTANCE:Lkotlin/text/Charsets;

    .line 29
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Charset.forName(\"UTF-8\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    const-string v1, "UTF-16"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Charset.forName(\"UTF-16\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/text/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 42
    const-string v1, "UTF-16BE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Charset.forName(\"UTF-16BE\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/text/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 48
    const-string v1, "UTF-16LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Charset.forName(\"UTF-16LE\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/text/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 55
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Charset.forName(\"US-ASCII\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 61
    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Charset.forName(\"ISO-8859-1\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final UTF32()Ljava/nio/charset/Charset;
    .locals 9
    .annotation build Lkotlin/jvm/JvmName;
        name = "UTF32"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    sget-object v5, Lkotlin/text/Charsets;->utf_32:Ljava/nio/charset/Charset;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    if-eqz v6, :cond_0

    .line 72
    :goto_0
    move-object v0, v5

    return-object v0

    .line 68
    :cond_0
    move-object v5, v0

    move-object v1, v5

    move-object v5, v1

    check-cast v5, Lkotlin/text/Charsets;

    move-object v2, v5

    .line 69
    const-string v5, "UTF-32"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Charset.forName(\"UTF-32\")"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    .line 70
    move-object v5, v3

    sput-object v5, Lkotlin/text/Charsets;->utf_32:Ljava/nio/charset/Charset;

    .line 71
    move-object v5, v3

    nop

    .line 68
    nop

    goto :goto_0
.end method

.method public final UTF32_BE()Ljava/nio/charset/Charset;
    .locals 9
    .annotation build Lkotlin/jvm/JvmName;
        name = "UTF32_BE"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    sget-object v5, Lkotlin/text/Charsets;->utf_32be:Ljava/nio/charset/Charset;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    if-eqz v6, :cond_0

    .line 96
    :goto_0
    move-object v0, v5

    return-object v0

    .line 92
    :cond_0
    move-object v5, v0

    move-object v1, v5

    move-object v5, v1

    check-cast v5, Lkotlin/text/Charsets;

    move-object v2, v5

    .line 93
    const-string v5, "UTF-32BE"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Charset.forName(\"UTF-32BE\")"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    .line 94
    move-object v5, v3

    sput-object v5, Lkotlin/text/Charsets;->utf_32be:Ljava/nio/charset/Charset;

    .line 95
    move-object v5, v3

    nop

    .line 92
    nop

    goto :goto_0
.end method

.method public final UTF32_LE()Ljava/nio/charset/Charset;
    .locals 9
    .annotation build Lkotlin/jvm/JvmName;
        name = "UTF32_LE"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    sget-object v5, Lkotlin/text/Charsets;->utf_32le:Ljava/nio/charset/Charset;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    if-eqz v6, :cond_0

    .line 84
    :goto_0
    move-object v0, v5

    return-object v0

    .line 80
    :cond_0
    move-object v5, v0

    move-object v1, v5

    move-object v5, v1

    check-cast v5, Lkotlin/text/Charsets;

    move-object v2, v5

    .line 81
    const-string v5, "UTF-32LE"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Charset.forName(\"UTF-32LE\")"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    .line 82
    move-object v5, v3

    sput-object v5, Lkotlin/text/Charsets;->utf_32le:Ljava/nio/charset/Charset;

    .line 83
    move-object v5, v3

    nop

    .line 80
    nop

    goto :goto_0
.end method
