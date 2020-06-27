.class public final enum Lkotlin/text/RegexOption;
.super Ljava/lang/Enum;
.source "Regex.kt"

# interfaces
.implements Lkotlin/text/FlagEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkotlin/text/RegexOption;",
        ">;",
        "Lkotlin/text/FlagEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/text/RegexOption;",
        "",
        "Lkotlin/text/FlagEnum;",
        "value",
        "",
        "mask",
        "(Ljava/lang/String;III)V",
        "getMask",
        "()I",
        "getValue",
        "IGNORE_CASE",
        "MULTILINE",
        "LITERAL",
        "UNIX_LINES",
        "COMMENTS",
        "DOT_MATCHES_ALL",
        "CANON_EQ",
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
.field private static final synthetic $VALUES:[Lkotlin/text/RegexOption;

.field public static final enum CANON_EQ:Lkotlin/text/RegexOption;

.field public static final enum COMMENTS:Lkotlin/text/RegexOption;

.field public static final enum DOT_MATCHES_ALL:Lkotlin/text/RegexOption;

.field public static final enum IGNORE_CASE:Lkotlin/text/RegexOption;

.field public static final enum LITERAL:Lkotlin/text/RegexOption;

.field public static final enum MULTILINE:Lkotlin/text/RegexOption;

.field public static final enum UNIX_LINES:Lkotlin/text/RegexOption;


# instance fields
.field private final mask:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/text/RegexOption;

    move-object v12, v0

    move-object v0, v12

    move-object v1, v12

    move-object v12, v1

    move-object v1, v12

    move-object v2, v12

    const/4 v3, 0x0

    new-instance v4, Lkotlin/text/RegexOption;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "IGNORE_CASE"

    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sput-object v5, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    aput-object v4, v2, v3

    move-object v12, v1

    move-object v1, v12

    move-object v2, v12

    const/4 v3, 0x1

    new-instance v4, Lkotlin/text/RegexOption;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "MULTILINE"

    const/4 v7, 0x1

    .line 39
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sput-object v5, Lkotlin/text/RegexOption;->MULTILINE:Lkotlin/text/RegexOption;

    aput-object v4, v2, v3

    move-object v12, v1

    move-object v1, v12

    move-object v2, v12

    const/4 v3, 0x2

    new-instance v4, Lkotlin/text/RegexOption;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "LITERAL"

    const/4 v7, 0x2

    .line 47
    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sput-object v5, Lkotlin/text/RegexOption;->LITERAL:Lkotlin/text/RegexOption;

    aput-object v4, v2, v3

    move-object v12, v1

    move-object v1, v12

    move-object v2, v12

    const/4 v3, 0x3

    new-instance v4, Lkotlin/text/RegexOption;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "UNIX_LINES"

    const/4 v7, 0x3

    .line 56
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sput-object v5, Lkotlin/text/RegexOption;->UNIX_LINES:Lkotlin/text/RegexOption;

    aput-object v4, v2, v3

    move-object v12, v1

    move-object v1, v12

    move-object v2, v12

    const/4 v3, 0x4

    new-instance v4, Lkotlin/text/RegexOption;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "COMMENTS"

    const/4 v7, 0x4

    .line 59
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sput-object v5, Lkotlin/text/RegexOption;->COMMENTS:Lkotlin/text/RegexOption;

    aput-object v4, v2, v3

    move-object v12, v1

    move-object v1, v12

    move-object v2, v12

    const/4 v3, 0x5

    new-instance v4, Lkotlin/text/RegexOption;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "DOT_MATCHES_ALL"

    const/4 v7, 0x5

    .line 64
    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sput-object v5, Lkotlin/text/RegexOption;->DOT_MATCHES_ALL:Lkotlin/text/RegexOption;

    aput-object v4, v2, v3

    move-object v12, v1

    move-object v1, v12

    move-object v2, v12

    const/4 v3, 0x6

    new-instance v4, Lkotlin/text/RegexOption;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "CANON_EQ"

    const/4 v7, 0x6

    .line 67
    const/16 v8, 0x80

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sput-object v5, Lkotlin/text/RegexOption;->CANON_EQ:Lkotlin/text/RegexOption;

    aput-object v4, v2, v3

    sput-object v1, Lkotlin/text/RegexOption;->$VALUES:[Lkotlin/text/RegexOption;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lkotlin/text/RegexOption;->value:I

    move-object v5, v0

    move v6, v4

    iput v6, v5, Lkotlin/text/RegexOption;->mask:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v5

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    .line 29
    move v7, v3

    move v4, v7

    :cond_0
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lkotlin/text/RegexOption;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/RegexOption;
    .locals 3

    move-object v0, p0

    const-class v1, Lkotlin/text/RegexOption;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lkotlin/text/RegexOption;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lkotlin/text/RegexOption;
    .locals 1

    sget-object v0, Lkotlin/text/RegexOption;->$VALUES:[Lkotlin/text/RegexOption;

    invoke-virtual {v0}, [Lkotlin/text/RegexOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/RegexOption;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/text/RegexOption;->mask:I

    move v0, v1

    return v0
.end method

.method public getValue()I
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/text/RegexOption;->value:I

    move v0, v1

    return v0
.end method
