.class public final Lkotlin/KotlinVersion;
.super Ljava/lang/Object;
.source "KotlinVersion.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/KotlinVersion$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lkotlin/KotlinVersion;",
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0017B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0011\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\u0016\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\u001e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J \u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlin/KotlinVersion;",
        "",
        "major",
        "",
        "minor",
        "(II)V",
        "patch",
        "(III)V",
        "getMajor",
        "()I",
        "getMinor",
        "getPatch",
        "version",
        "compareTo",
        "other",
        "equals",
        "",
        "",
        "hashCode",
        "isAtLeast",
        "toString",
        "",
        "versionOf",
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

.annotation build Lkotlin/SinceKotlin;
    version = "1.1"
.end annotation


# static fields
.field public static final CURRENT:Lkotlin/KotlinVersion;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lkotlin/KotlinVersion$Companion;

.field public static final MAX_COMPONENT_VALUE:I = 0xff


# instance fields
.field private final major:I

.field private final minor:I

.field private final patch:I

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    new-instance v0, Lkotlin/KotlinVersion$Companion;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/KotlinVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/KotlinVersion;->Companion:Lkotlin/KotlinVersion$Companion;

    .line 75
    new-instance v0, Lkotlin/KotlinVersion;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x3d

    invoke-direct {v1, v2, v3, v4}, Lkotlin/KotlinVersion;-><init>(III)V

    sput-object v0, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 21
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lkotlin/KotlinVersion;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 9

    .prologue
    .line 17
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lkotlin/KotlinVersion;->major:I

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lkotlin/KotlinVersion;->minor:I

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lkotlin/KotlinVersion;->patch:I

    .line 23
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lkotlin/KotlinVersion;->major:I

    move-object v7, v0

    iget v7, v7, Lkotlin/KotlinVersion;->minor:I

    move-object v8, v0

    iget v8, v8, Lkotlin/KotlinVersion;->patch:I

    invoke-direct {v5, v6, v7, v8}, Lkotlin/KotlinVersion;->versionOf(III)I

    move-result v5

    iput v5, v4, Lkotlin/KotlinVersion;->version:I

    return-void
.end method

.method private final versionOf(III)I
    .locals 11

    .prologue
    .line 26
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    const/16 v7, 0xff

    const/4 v8, 0x0

    move v9, v1

    move v4, v9

    move v9, v4

    if-le v8, v9, :cond_1

    :cond_0
    :goto_0
    const/4 v7, 0x0

    :goto_1
    move v4, v7

    move v7, v4

    if-nez v7, :cond_4

    .line 27
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Version components are out of range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 26
    move-object v6, v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_1
    move v8, v4

    if-lt v7, v8, :cond_0

    const/16 v7, 0xff

    const/4 v8, 0x0

    move v9, v2

    move v4, v9

    move v9, v4

    if-le v8, v9, :cond_2

    goto :goto_0

    :cond_2
    move v8, v4

    if-lt v7, v8, :cond_0

    const/16 v7, 0xff

    const/4 v8, 0x0

    move v9, v3

    move v4, v9

    move v9, v4

    if-le v8, v9, :cond_3

    goto :goto_0

    :cond_3
    move v8, v4

    if-lt v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    .line 29
    :cond_4
    move v7, v1

    const/16 v8, 0x10

    shl-int/lit8 v7, v7, 0x10

    move v8, v2

    const/16 v9, 0x8

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    move v8, v3

    add-int/2addr v7, v8

    move v0, v7

    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lkotlin/KotlinVersion;

    invoke-virtual {v2, v3}, Lkotlin/KotlinVersion;->compareTo(Lkotlin/KotlinVersion;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public compareTo(Lkotlin/KotlinVersion;)I
    .locals 4
    .param p1    # Lkotlin/KotlinVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "other"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object v2, v0

    iget v2, v2, Lkotlin/KotlinVersion;->version:I

    move-object v3, v1

    iget v3, v3, Lkotlin/KotlinVersion;->version:I

    sub-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    check-cast v3, Lkotlin/KotlinVersion;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 40
    :goto_0
    return v0

    .line 39
    :cond_0
    move-object v3, v1

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    instance-of v4, v4, Lkotlin/KotlinVersion;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    check-cast v3, Lkotlin/KotlinVersion;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 40
    move-object v3, v0

    iget v3, v3, Lkotlin/KotlinVersion;->version:I

    move-object v4, v2

    iget v4, v4, Lkotlin/KotlinVersion;->version:I

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    .line 39
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 40
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final getMajor()I
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/KotlinVersion;->major:I

    move v0, v1

    return v0
.end method

.method public final getMinor()I
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/KotlinVersion;->minor:I

    move v0, v1

    return v0
.end method

.method public final getPatch()I
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/KotlinVersion;->patch:I

    move v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lkotlin/KotlinVersion;->version:I

    move v0, v1

    return v0
.end method

.method public final isAtLeast(II)Z
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Lkotlin/KotlinVersion;->major:I

    move v4, v1

    if-gt v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lkotlin/KotlinVersion;->major:I

    move v4, v1

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Lkotlin/KotlinVersion;->minor:I

    move v4, v2

    if-lt v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final isAtLeast(III)Z
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget v4, v4, Lkotlin/KotlinVersion;->major:I

    move v5, v1

    if-gt v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lkotlin/KotlinVersion;->major:I

    move v5, v1

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget v4, v4, Lkotlin/KotlinVersion;->minor:I

    move v5, v2

    if-gt v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lkotlin/KotlinVersion;->minor:I

    move v5, v2

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget v4, v4, Lkotlin/KotlinVersion;->patch:I

    move v5, v3

    if-lt v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget v2, v2, Lkotlin/KotlinVersion;->major:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lkotlin/KotlinVersion;->minor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lkotlin/KotlinVersion;->patch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
