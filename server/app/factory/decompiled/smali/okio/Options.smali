.class public final Lokio/Options;
.super Lkotlin/collections/AbstractList;
.source "Options.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Options$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList",
        "<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0015B\u001f\u0008\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0011\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0096\u0002R\u001e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0006X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokio/Options;",
        "Lkotlin/collections/AbstractList;",
        "Lokio/ByteString;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "byteStrings",
        "",
        "trie",
        "",
        "([Lokio/ByteString;[I)V",
        "getByteStrings$okio",
        "()[Lokio/ByteString;",
        "[Lokio/ByteString;",
        "size",
        "",
        "getSize",
        "()I",
        "getTrie$okio",
        "()[I",
        "get",
        "index",
        "Companion",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lokio/Options$Companion;


# instance fields
.field private final byteStrings:[Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trie:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokio/Options$Companion;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lokio/Options$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/Options;->Companion:Lokio/Options$Companion;

    return-void
.end method

.method private constructor <init>([Lokio/ByteString;[I)V
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    .line 24
    invoke-direct {v3}, Lkotlin/collections/AbstractList;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/Options;->byteStrings:[Lokio/ByteString;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/Options;->trie:[I

    return-void
.end method

.method public synthetic constructor <init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-void
.end method

.method public static final varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 3
    .param p0    # [Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    sget-object v1, Lokio/Options;->Companion:Lokio/Options$Companion;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lokio/Options$Companion;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lokio/ByteString;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v2, v3}, Lokio/Options;->contains(Lokio/ByteString;)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public bridge contains(Lokio/ByteString;)Z
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lkotlin/collections/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Options;->get(I)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public get(I)Lokio/ByteString;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokio/Options;->byteStrings:[Lokio/ByteString;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public final getByteStrings$okio()[Lokio/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    move-object v0, v1

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    array-length v1, v1

    move v0, v1

    return v0
.end method

.method public final getTrie$okio()[I
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Options;->trie:[I

    move-object v0, v1

    return-object v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lokio/ByteString;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v2, v3}, Lokio/Options;->indexOf(Lokio/ByteString;)I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public bridge indexOf(Lokio/ByteString;)I
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lkotlin/collections/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lokio/ByteString;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v2, v3}, Lokio/Options;->lastIndexOf(Lokio/ByteString;)I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public bridge lastIndexOf(Lokio/ByteString;)I
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lkotlin/collections/AbstractList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method
