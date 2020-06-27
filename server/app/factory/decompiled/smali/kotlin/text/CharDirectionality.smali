.class public final enum Lkotlin/text/CharDirectionality;
.super Ljava/lang/Enum;
.source "CharDirectionality.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/CharDirectionality$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkotlin/text/CharDirectionality;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0019\u0008\u0086\u0001\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/text/CharDirectionality;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UNDEFINED",
        "LEFT_TO_RIGHT",
        "RIGHT_TO_LEFT",
        "RIGHT_TO_LEFT_ARABIC",
        "EUROPEAN_NUMBER",
        "EUROPEAN_NUMBER_SEPARATOR",
        "EUROPEAN_NUMBER_TERMINATOR",
        "ARABIC_NUMBER",
        "COMMON_NUMBER_SEPARATOR",
        "NONSPACING_MARK",
        "BOUNDARY_NEUTRAL",
        "PARAGRAPH_SEPARATOR",
        "SEGMENT_SEPARATOR",
        "WHITESPACE",
        "OTHER_NEUTRALS",
        "LEFT_TO_RIGHT_EMBEDDING",
        "LEFT_TO_RIGHT_OVERRIDE",
        "RIGHT_TO_LEFT_EMBEDDING",
        "RIGHT_TO_LEFT_OVERRIDE",
        "POP_DIRECTIONAL_FORMAT",
        "Companion",
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
.field private static final synthetic $VALUES:[Lkotlin/text/CharDirectionality;

.field public static final enum ARABIC_NUMBER:Lkotlin/text/CharDirectionality;

.field public static final enum BOUNDARY_NEUTRAL:Lkotlin/text/CharDirectionality;

.field public static final enum COMMON_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final Companion:Lkotlin/text/CharDirectionality$Companion;

.field public static final enum EUROPEAN_NUMBER:Lkotlin/text/CharDirectionality;

.field public static final enum EUROPEAN_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum EUROPEAN_NUMBER_TERMINATOR:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT_EMBEDDING:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT_OVERRIDE:Lkotlin/text/CharDirectionality;

.field public static final enum NONSPACING_MARK:Lkotlin/text/CharDirectionality;

.field public static final enum OTHER_NEUTRALS:Lkotlin/text/CharDirectionality;

.field public static final enum PARAGRAPH_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum POP_DIRECTIONAL_FORMAT:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_ARABIC:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_EMBEDDING:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_OVERRIDE:Lkotlin/text/CharDirectionality;

.field public static final enum SEGMENT_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum UNDEFINED:Lkotlin/text/CharDirectionality;

.field public static final enum WHITESPACE:Lkotlin/text/CharDirectionality;

.field private static final directionalityMap$delegate:Lkotlin/Lazy;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v0, 0x14

    new-array v0, v0, [Lkotlin/text/CharDirectionality;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/4 v3, 0x0

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "UNDEFINED"

    const/4 v7, 0x0

    .line 21
    const/4 v8, -0x1

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->UNDEFINED:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/4 v3, 0x1

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "LEFT_TO_RIGHT"

    const/4 v7, 0x1

    .line 26
    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/4 v3, 0x2

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "RIGHT_TO_LEFT"

    const/4 v7, 0x2

    .line 31
    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/4 v3, 0x3

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "RIGHT_TO_LEFT_ARABIC"

    const/4 v7, 0x3

    .line 36
    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_ARABIC:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/4 v3, 0x4

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "EUROPEAN_NUMBER"

    const/4 v7, 0x4

    .line 41
    const/4 v8, 0x3

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/4 v3, 0x5

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "EUROPEAN_NUMBER_SEPARATOR"

    const/4 v7, 0x5

    .line 46
    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/4 v3, 0x6

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "EUROPEAN_NUMBER_TERMINATOR"

    const/4 v7, 0x6

    .line 51
    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER_TERMINATOR:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/4 v3, 0x7

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "ARABIC_NUMBER"

    const/4 v7, 0x7

    .line 56
    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->ARABIC_NUMBER:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0x8

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "COMMON_NUMBER_SEPARATOR"

    const/16 v7, 0x8

    .line 61
    const/4 v8, 0x7

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->COMMON_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0x9

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "NONSPACING_MARK"

    const/16 v7, 0x9

    .line 66
    const/16 v8, 0x8

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->NONSPACING_MARK:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0xa

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "BOUNDARY_NEUTRAL"

    const/16 v7, 0xa

    .line 71
    const/16 v8, 0x9

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->BOUNDARY_NEUTRAL:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0xb

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "PARAGRAPH_SEPARATOR"

    const/16 v7, 0xb

    .line 76
    const/16 v8, 0xa

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->PARAGRAPH_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0xc

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "SEGMENT_SEPARATOR"

    const/16 v7, 0xc

    .line 81
    const/16 v8, 0xb

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->SEGMENT_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0xd

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "WHITESPACE"

    const/16 v7, 0xd

    .line 86
    const/16 v8, 0xc

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->WHITESPACE:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0xe

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "OTHER_NEUTRALS"

    const/16 v7, 0xe

    .line 91
    const/16 v8, 0xd

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->OTHER_NEUTRALS:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0xf

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "LEFT_TO_RIGHT_EMBEDDING"

    const/16 v7, 0xf

    .line 96
    const/16 v8, 0xe

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT_EMBEDDING:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0x10

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "LEFT_TO_RIGHT_OVERRIDE"

    const/16 v7, 0x10

    .line 101
    const/16 v8, 0xf

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT_OVERRIDE:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0x11

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "RIGHT_TO_LEFT_EMBEDDING"

    const/16 v7, 0x11

    .line 106
    const/16 v8, 0x10

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_EMBEDDING:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0x12

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "RIGHT_TO_LEFT_OVERRIDE"

    const/16 v7, 0x12

    .line 111
    const/16 v8, 0x11

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_OVERRIDE:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0x13

    new-instance v4, Lkotlin/text/CharDirectionality;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "POP_DIRECTIONAL_FORMAT"

    const/16 v7, 0x13

    .line 116
    const/16 v8, 0x12

    invoke-direct {v5, v6, v7, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sput-object v5, Lkotlin/text/CharDirectionality;->POP_DIRECTIONAL_FORMAT:Lkotlin/text/CharDirectionality;

    aput-object v4, v2, v3

    sput-object v1, Lkotlin/text/CharDirectionality;->$VALUES:[Lkotlin/text/CharDirectionality;

    new-instance v1, Lkotlin/text/CharDirectionality$Companion;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lkotlin/text/CharDirectionality$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lkotlin/text/CharDirectionality;->Companion:Lkotlin/text/CharDirectionality$Companion;

    .line 120
    sget-object v1, Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;->INSTANCE:Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    sput-object v1, Lkotlin/text/CharDirectionality;->directionalityMap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lkotlin/text/CharDirectionality;->value:I

    return-void
.end method

.method public static final synthetic access$getDirectionalityMap$cp()Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 15
    sget-object v0, Lkotlin/text/CharDirectionality;->directionalityMap$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/CharDirectionality;
    .locals 3

    move-object v0, p0

    const-class v1, Lkotlin/text/CharDirectionality;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lkotlin/text/CharDirectionality;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lkotlin/text/CharDirectionality;
    .locals 1

    sget-object v0, Lkotlin/text/CharDirectionality;->$VALUES:[Lkotlin/text/CharDirectionality;

    invoke-virtual {v0}, [Lkotlin/text/CharDirectionality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/CharDirectionality;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/text/CharDirectionality;->value:I

    move v0, v1

    return v0
.end method
