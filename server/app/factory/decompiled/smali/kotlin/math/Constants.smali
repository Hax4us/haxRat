.class final Lkotlin/math/Constants;
.super Ljava/lang/Object;
.source "MathJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0006\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlin/math/Constants;",
        "",
        "()V",
        "LN2",
        "",
        "epsilon",
        "taylor_2_bound",
        "taylor_n_bound",
        "upper_taylor_2_bound",
        "upper_taylor_n_bound",
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
.field public static final INSTANCE:Lkotlin/math/Constants;

.field public static final LN2:D
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final epsilon:D
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final taylor_2_bound:D
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final taylor_n_bound:D
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final upper_taylor_2_bound:D
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final upper_taylor_n_bound:D
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 22
    new-instance v3, Lkotlin/math/Constants;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lkotlin/math/Constants;-><init>()V

    move-object v0, v3

    move-object v3, v0

    sput-object v3, Lkotlin/math/Constants;->INSTANCE:Lkotlin/math/Constants;

    .line 26
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    move-wide v1, v3

    move-wide v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sput-wide v3, Lkotlin/math/Constants;->LN2:D

    .line 29
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v3

    sput-wide v3, Lkotlin/math/Constants;->epsilon:D

    .line 31
    sget-wide v3, Lkotlin/math/Constants;->epsilon:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    sput-wide v3, Lkotlin/math/Constants;->taylor_2_bound:D

    .line 33
    sget-wide v3, Lkotlin/math/Constants;->taylor_2_bound:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    sput-wide v3, Lkotlin/math/Constants;->taylor_n_bound:D

    .line 35
    const/4 v3, 0x1

    int-to-double v3, v3

    sget-wide v5, Lkotlin/math/Constants;->taylor_2_bound:D

    div-double/2addr v3, v5

    sput-wide v3, Lkotlin/math/Constants;->upper_taylor_2_bound:D

    .line 37
    const/4 v3, 0x1

    int-to-double v3, v3

    sget-wide v5, Lkotlin/math/Constants;->taylor_n_bound:D

    div-double/2addr v3, v5

    sput-wide v3, Lkotlin/math/Constants;->upper_taylor_n_bound:D

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
