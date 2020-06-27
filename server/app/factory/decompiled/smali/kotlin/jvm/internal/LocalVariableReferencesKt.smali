.class public final Lkotlin/jvm/internal/LocalVariableReferencesKt;
.super Ljava/lang/Object;
.source "localVariableReferences.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0001\n\u0000\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0002\u00a8\u0006\u0002"
    }
    d2 = {
        "notSupportedError",
        "",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method public static final synthetic access$notSupportedError()Ljava/lang/Void;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1
    invoke-static {}, Lkotlin/jvm/internal/LocalVariableReferencesKt;->notSupportedError()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private static final notSupportedError()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "Not supported for local property reference."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
