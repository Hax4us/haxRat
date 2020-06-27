.class final Lkotlin/io/ConsoleKt$decoder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Console.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/ConsoleKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Ljava/nio/charset/CharsetDecoder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/nio/charset/CharsetDecoder;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/io/ConsoleKt$decoder$2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/io/ConsoleKt$decoder$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkotlin/io/ConsoleKt$decoder$2;-><init>()V

    sput-object v0, Lkotlin/io/ConsoleKt$decoder$2;->INSTANCE:Lkotlin/io/ConsoleKt$decoder$2;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/io/ConsoleKt$decoder$2;->invoke()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final invoke()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
