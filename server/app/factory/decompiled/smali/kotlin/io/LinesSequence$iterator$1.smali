.class public final Lkotlin/io/LinesSequence$iterator$1;
.super Ljava/lang/Object;
.source "ReadWrite.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/LinesSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;",
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
        "\u0000\u0019\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\t\u0010\u0007\u001a\u00020\u0005H\u0096\u0002J\t\u0010\u0008\u001a\u00020\u0002H\u0096\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "kotlin/io/LinesSequence$iterator$1",
        "",
        "",
        "(Lkotlin/io/LinesSequence;)V",
        "done",
        "",
        "nextValue",
        "hasNext",
        "next",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field private done:Z

.field private nextValue:Ljava/lang/String;

.field final synthetic this$0:Lkotlin/io/LinesSequence;


# direct methods
.method constructor <init>(Lkotlin/io/LinesSequence;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkotlin/io/LinesSequence$iterator$1;->this$0:Lkotlin/io/LinesSequence;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/io/LinesSequence$iterator$1;->nextValue:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lkotlin/io/LinesSequence$iterator$1;->done:Z

    if-nez v1, :cond_0

    .line 80
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/LinesSequence$iterator$1;->this$0:Lkotlin/io/LinesSequence;

    invoke-static {v2}, Lkotlin/io/LinesSequence;->access$getReader$p(Lkotlin/io/LinesSequence;)Ljava/io/BufferedReader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lkotlin/io/LinesSequence$iterator$1;->nextValue:Ljava/lang/String;

    .line 81
    move-object v1, v0

    iget-object v1, v1, Lkotlin/io/LinesSequence$iterator$1;->nextValue:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkotlin/io/LinesSequence$iterator$1;->done:Z

    .line 83
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lkotlin/io/LinesSequence$iterator$1;->nextValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lkotlin/io/LinesSequence$iterator$1;->next()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lkotlin/io/LinesSequence$iterator$1;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 90
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lkotlin/io/LinesSequence$iterator$1;->nextValue:Ljava/lang/String;

    move-object v1, v2

    .line 91
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lkotlin/io/LinesSequence$iterator$1;->nextValue:Ljava/lang/String;

    .line 92
    move-object v2, v1

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v0, v2

    return-object v0
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
