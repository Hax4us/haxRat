.class final Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CharDirectionality.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/CharDirectionality;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/text/CharDirectionality;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "Lkotlin/text/CharDirectionality;",
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
.field public static final INSTANCE:Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;-><init>()V

    sput-object v0, Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;->INSTANCE:Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;

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

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;->invoke()Ljava/util/Map;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lkotlin/text/CharDirectionality;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 120
    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/text/CharDirectionality;->values()[Lkotlin/text/CharDirectionality;

    move-result-object v14

    move-object v1, v14

    .line 126
    move-object v14, v1

    array-length v14, v14

    invoke-static {v14}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v14

    move v2, v14

    .line 127
    move-object v14, v1

    move-object v3, v14

    new-instance v14, Ljava/util/LinkedHashMap;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move/from16 v16, v2

    invoke-direct/range {v15 .. v16}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v14, Ljava/util/Map;

    move-object v4, v14

    .line 128
    move-object v14, v3

    array-length v14, v14

    move v5, v14

    const/4 v14, 0x0

    move v6, v14

    :goto_0
    move v14, v6

    move v15, v5

    if-ge v14, v15, :cond_0

    move-object v14, v3

    move v15, v6

    aget-object v14, v14, v15

    move-object v7, v14

    .line 129
    move-object v14, v4

    move-object v15, v7

    move-object v8, v15

    move-object v12, v14

    .line 120
    move-object v14, v8

    invoke-virtual {v14}, Lkotlin/text/CharDirectionality;->getValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v13, v14

    move-object v14, v12

    move-object v15, v13

    move-object/from16 v16, v7

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 128
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 131
    :cond_0
    move-object v14, v4

    nop

    .line 120
    move-object v0, v14

    return-object v0
.end method
