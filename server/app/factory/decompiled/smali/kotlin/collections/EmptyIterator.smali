.class public final Lkotlin/collections/EmptyIterator;
.super Ljava/lang/Object;
.source "Collections.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010*\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\t\u0010\u0004\u001a\u00020\u0005H\u0096\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\t\u0010\u0007\u001a\u00020\u0002H\u0096\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0008\u0010\u000b\u001a\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/collections/EmptyIterator;",
        "",
        "",
        "()V",
        "hasNext",
        "",
        "hasPrevious",
        "next",
        "nextIndex",
        "",
        "previous",
        "previousIndex",
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
.field public static final INSTANCE:Lkotlin/collections/EmptyIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v1, Lkotlin/collections/EmptyIterator;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lkotlin/collections/EmptyIterator;-><init>()V

    move-object v0, v1

    move-object v1, v0

    sput-object v1, Lkotlin/collections/EmptyIterator;->INSTANCE:Lkotlin/collections/EmptyIterator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic add(Ljava/lang/Object;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Operation is not supported for read-only collection"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public add(Ljava/lang/Void;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Operation is not supported for read-only collection"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/EmptyIterator;->next()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public next()Ljava/lang/Void;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/collections/EmptyIterator;->previous()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public previous()Ljava/lang/Void;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    const/4 v1, -0x1

    move v0, v1

    return v0
.end method

.method public remove()V
    .locals 5

    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operation is not supported for read-only collection"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic set(Ljava/lang/Object;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Operation is not supported for read-only collection"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public set(Ljava/lang/Void;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Operation is not supported for read-only collection"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
