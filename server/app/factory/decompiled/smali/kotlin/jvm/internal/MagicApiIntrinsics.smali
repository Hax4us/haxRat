.class public Lkotlin/jvm/internal/MagicApiIntrinsics;
.super Ljava/lang/Object;
.source "MagicApiIntrinsics.java"


# annotations
.annotation build Lkotlin/SinceKotlin;
    version = "1.2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anyMagicApiCall(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 13
    move v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public static anyMagicApiCall(IJJLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 55
    move v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    const/4 v6, 0x0

    move-object v0, v6

    return-object v0
.end method

.method public static anyMagicApiCall(IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJ",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    move v0, p0

    move-wide v1, p1

    move-object v3, p3

    const/4 v4, 0x0

    move-object v0, v4

    return-object v0
.end method

.method public static anyMagicApiCall(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 59
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public static anyMagicApiCall(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 63
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, v5

    return-object v0
.end method

.method public static anyMagicApiCall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public static intMagicApiCall(I)I
    .locals 2

    .prologue
    .line 20
    move v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public static intMagicApiCall(IJJLjava/lang/Object;)I
    .locals 7

    .prologue
    .line 39
    move v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    const/4 v6, 0x0

    move v0, v6

    return v0
.end method

.method public static intMagicApiCall(IJLjava/lang/Object;)I
    .locals 5

    .prologue
    .line 35
    move v0, p0

    move-wide v1, p1

    move-object v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public static intMagicApiCall(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 43
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public static intMagicApiCall(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 47
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    move v0, v5

    return v0
.end method

.method public static intMagicApiCall(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public static voidMagicApiCall(I)V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public static voidMagicApiCall(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
