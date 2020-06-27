.class public final enum Lkotlin/annotation/AnnotationTarget;
.super Ljava/lang/Enum;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkotlin/annotation/AnnotationTarget;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/annotation/AnnotationTarget;",
        "",
        "(Ljava/lang/String;I)V",
        "CLASS",
        "ANNOTATION_CLASS",
        "TYPE_PARAMETER",
        "PROPERTY",
        "FIELD",
        "LOCAL_VARIABLE",
        "VALUE_PARAMETER",
        "CONSTRUCTOR",
        "FUNCTION",
        "PROPERTY_GETTER",
        "PROPERTY_SETTER",
        "TYPE",
        "EXPRESSION",
        "FILE",
        "TYPEALIAS",
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
.field private static final synthetic $VALUES:[Lkotlin/annotation/AnnotationTarget;

.field public static final enum ANNOTATION_CLASS:Lkotlin/annotation/AnnotationTarget;

.field public static final enum CLASS:Lkotlin/annotation/AnnotationTarget;

.field public static final enum CONSTRUCTOR:Lkotlin/annotation/AnnotationTarget;

.field public static final enum EXPRESSION:Lkotlin/annotation/AnnotationTarget;

.field public static final enum FIELD:Lkotlin/annotation/AnnotationTarget;

.field public static final enum FILE:Lkotlin/annotation/AnnotationTarget;

.field public static final enum FUNCTION:Lkotlin/annotation/AnnotationTarget;

.field public static final enum LOCAL_VARIABLE:Lkotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY:Lkotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY_GETTER:Lkotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY_SETTER:Lkotlin/annotation/AnnotationTarget;

.field public static final enum TYPE:Lkotlin/annotation/AnnotationTarget;

.field public static final enum TYPEALIAS:Lkotlin/annotation/AnnotationTarget;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation
.end field

.field public static final enum TYPE_PARAMETER:Lkotlin/annotation/AnnotationTarget;

.field public static final enum VALUE_PARAMETER:Lkotlin/annotation/AnnotationTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0xf

    new-array v0, v0, [Lkotlin/annotation/AnnotationTarget;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x0

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "CLASS"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->CLASS:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x1

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "ANNOTATION_CLASS"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->ANNOTATION_CLASS:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x2

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "TYPE_PARAMETER"

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->TYPE_PARAMETER:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x3

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "PROPERTY"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->PROPERTY:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x4

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "FIELD"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->FIELD:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x5

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "LOCAL_VARIABLE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->LOCAL_VARIABLE:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x6

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "VALUE_PARAMETER"

    const/4 v7, 0x6

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x7

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "CONSTRUCTOR"

    const/4 v7, 0x7

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->CONSTRUCTOR:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/16 v3, 0x8

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "FUNCTION"

    const/16 v7, 0x8

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/16 v3, 0x9

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "PROPERTY_GETTER"

    const/16 v7, 0x9

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->PROPERTY_GETTER:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/16 v3, 0xa

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "PROPERTY_SETTER"

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->PROPERTY_SETTER:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/16 v3, 0xb

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "TYPE"

    const/16 v7, 0xb

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->TYPE:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/16 v3, 0xc

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "EXPRESSION"

    const/16 v7, 0xc

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->EXPRESSION:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/16 v3, 0xd

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "FILE"

    const/16 v7, 0xd

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->FILE:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/16 v3, 0xe

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "TYPEALIAS"

    const/16 v7, 0xe

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->TYPEALIAS:Lkotlin/annotation/AnnotationTarget;

    aput-object v4, v2, v3

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->$VALUES:[Lkotlin/annotation/AnnotationTarget;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/annotation/AnnotationTarget;
    .locals 3

    move-object v0, p0

    const-class v1, Lkotlin/annotation/AnnotationTarget;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lkotlin/annotation/AnnotationTarget;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lkotlin/annotation/AnnotationTarget;
    .locals 1

    sget-object v0, Lkotlin/annotation/AnnotationTarget;->$VALUES:[Lkotlin/annotation/AnnotationTarget;

    invoke-virtual {v0}, [Lkotlin/annotation/AnnotationTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/annotation/AnnotationTarget;

    return-object v0
.end method
