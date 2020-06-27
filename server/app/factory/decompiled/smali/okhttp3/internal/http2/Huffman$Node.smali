.class final Lokhttp3/internal/http2/Huffman$Node;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Huffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field final children:[Lokhttp3/internal/http2/Huffman$Node;

.field final symbol:I

.field final terminalBits:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 209
    move-object v1, v0

    const/16 v2, 0x100

    new-array v2, v2, [Lokhttp3/internal/http2/Huffman$Node;

    iput-object v2, v1, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    .line 210
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 211
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    .line 212
    return-void
.end method

.method constructor <init>(II)V
    .locals 6

    .prologue
    .line 220
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 221
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lokhttp3/internal/http2/Huffman$Node;->children:[Lokhttp3/internal/http2/Huffman$Node;

    .line 222
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 223
    move v4, v2

    const/4 v5, 0x7

    and-int/lit8 v4, v4, 0x7

    move v3, v4

    .line 224
    move-object v4, v0

    move v5, v3

    if-nez v5, :cond_0

    const/16 v5, 0x8

    :goto_0
    iput v5, v4, Lokhttp3/internal/http2/Huffman$Node;->terminalBits:I

    .line 225
    return-void

    .line 224
    :cond_0
    move v5, v3

    goto :goto_0
.end method
