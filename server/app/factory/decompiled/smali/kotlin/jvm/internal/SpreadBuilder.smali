.class public Lkotlin/jvm/internal/SpreadBuilder;
.super Ljava/lang/Object;
.source "SpreadBuilder.java"


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 17
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 57
    return-void
.end method

.method public addSpread(Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    if-nez v7, :cond_0

    .line 49
    :goto_0
    return-void

    .line 24
    :cond_0
    move-object v7, v1

    instance-of v7, v7, [Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 25
    move-object v7, v1

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    move-object v2, v7

    .line 26
    move-object v7, v2

    array-length v7, v7

    if-lez v7, :cond_1

    .line 27
    move-object v7, v0

    iget-object v7, v7, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v8, v8, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object v9, v2

    array-length v9, v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 28
    move-object v7, v2

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 29
    move-object v7, v0

    iget-object v7, v7, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 28
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 49
    :cond_1
    :goto_2
    goto :goto_0

    .line 33
    :cond_2
    move-object v7, v1

    instance-of v7, v7, Ljava/util/Collection;

    if-eqz v7, :cond_3

    .line 34
    move-object v7, v0

    iget-object v7, v7, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    move-object v8, v1

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v7

    goto :goto_2

    .line 36
    :cond_3
    move-object v7, v1

    instance-of v7, v7, Ljava/lang/Iterable;

    if-eqz v7, :cond_5

    .line 37
    move-object v7, v1

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    :goto_3
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 38
    move-object v7, v0

    iget-object v7, v7, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_3

    :cond_4
    goto :goto_2

    .line 41
    :cond_5
    move-object v7, v1

    instance-of v7, v7, Ljava/util/Iterator;

    if-eqz v7, :cond_7

    .line 42
    move-object v7, v1

    check-cast v7, Ljava/util/Iterator;

    move-object v2, v7

    :goto_4
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 43
    move-object v7, v0

    iget-object v7, v7, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_4

    :cond_6
    goto :goto_2

    .line 47
    :cond_7
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Don\'t know how to spread "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public size()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
