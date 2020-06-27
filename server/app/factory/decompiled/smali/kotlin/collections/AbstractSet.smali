.class public abstract Lkotlin/collections/AbstractSet;
.super Lkotlin/collections/AbstractCollection;
.source "AbstractSet.kt"

# interfaces
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/AbstractSet$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u000b*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u000bB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/collections/AbstractSet;",
        "E",
        "Lkotlin/collections/AbstractCollection;",
        "",
        "()V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field public static final Companion:Lkotlin/collections/AbstractSet$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/collections/AbstractSet$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlin/collections/AbstractSet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/AbstractSet;->Companion:Lkotlin/collections/AbstractSet$Companion;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lkotlin/collections/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    check-cast v3, Lkotlin/collections/AbstractSet;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 25
    :goto_0
    return v0

    .line 24
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/util/Set;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 25
    :cond_1
    sget-object v2, Lkotlin/collections/AbstractSet;->Companion:Lkotlin/collections/AbstractSet$Companion;

    move-object v3, v0

    check-cast v3, Ljava/util/Set;

    move-object v4, v1

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v2, v3, v4}, Lkotlin/collections/AbstractSet$Companion;->setEquals$kotlin_stdlib(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    sget-object v1, Lkotlin/collections/AbstractSet;->Companion:Lkotlin/collections/AbstractSet$Companion;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lkotlin/collections/AbstractSet$Companion;->unorderedHashCode$kotlin_stdlib(Ljava/util/Collection;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operation is not supported for read-only collection"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
