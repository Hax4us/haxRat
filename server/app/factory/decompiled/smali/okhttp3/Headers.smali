.class public final Lokhttp3/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Headers$Builder;
    }
.end annotation


# instance fields
.field private final namesAndValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lokhttp3/Headers$Builder;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method private static get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x2

    add-int/lit8 v3, v3, -0x2

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_1

    .line 177
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    move-object v0, v3

    .line 181
    :goto_1
    return-object v0

    .line 176
    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 181
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public static of(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move-object v7, v0

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "headers == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 220
    :cond_0
    move-object v7, v0

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    move-object v1, v7

    .line 221
    const/4 v7, 0x0

    move v2, v7

    .line 222
    move-object v7, v0

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v4, v7

    .line 223
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 224
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Headers cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 226
    :cond_2
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 227
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 228
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 229
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 231
    :cond_4
    move-object v7, v1

    move v8, v2

    move-object v9, v5

    aput-object v9, v7, v8

    .line 232
    move-object v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v6

    aput-object v9, v7, v8

    .line 233
    add-int/lit8 v2, v2, 0x2

    .line 234
    goto/16 :goto_0

    .line 236
    :cond_5
    new-instance v7, Lokhttp3/Headers;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-direct {v8, v9}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    move-object v0, v7

    return-object v0
.end method

.method public static varargs of([Ljava/lang/String;)Lokhttp3/Headers;
    .locals 9

    .prologue
    .line 189
    move-object v0, p0

    move-object v4, v0

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "namesAndValues == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    :cond_0
    move-object v4, v0

    array-length v4, v4

    const/4 v5, 0x2

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 191
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Expected alternating header names and values"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    .line 196
    const/4 v4, 0x0

    move v1, v4

    :goto_0
    move v4, v1

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 197
    move-object v4, v0

    move v5, v1

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Headers cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    :cond_2
    move-object v4, v0

    move v5, v1

    move-object v6, v0

    move v7, v1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_3
    const/4 v4, 0x0

    move v1, v4

    :goto_1
    move v4, v1

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 203
    move-object v4, v0

    move v5, v1

    aget-object v4, v4, v5

    move-object v2, v4

    .line 204
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 205
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 206
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected header: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 210
    :cond_6
    new-instance v4, Lokhttp3/Headers;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lokhttp3/Headers;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lokhttp3/Headers;

    iget-object v2, v2, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    .line 146
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 145
    :goto_0
    move v0, v2

    return v0

    .line 146
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lokhttp3/Headers;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 71
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-static {v3}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public name(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    move v3, v1

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    new-instance v4, Ljava/util/TreeSet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    sget-object v6, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v1, v4

    .line 92
    const/4 v4, 0x0

    move v2, v4

    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    move-result v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 93
    move-object v4, v1

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public newBuilder()Lokhttp3/Headers$Builder;
    .locals 5

    .prologue
    .line 113
    move-object v0, p0

    new-instance v2, Lokhttp3/Headers$Builder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lokhttp3/Headers$Builder;-><init>()V

    move-object v1, v2

    .line 114
    move-object v2, v1

    iget-object v2, v2, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    .line 115
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    move v0, v1

    return v0
.end method

.method public toMultimap()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    new-instance v6, Ljava/util/TreeMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    sget-object v8, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v7, v8}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v1, v6

    .line 163
    const/4 v6, 0x0

    move v2, v6

    move-object v6, v0

    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v6

    move v3, v6

    :goto_0
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 164
    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 165
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v5, v6

    .line 166
    move-object v6, v5

    if-nez v6, :cond_0

    .line 167
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v6

    .line 168
    move-object v6, v1

    move-object v7, v4

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 170
    :cond_0
    move-object v6, v5

    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_1
    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 154
    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 155
    const/4 v4, 0x0

    move v2, v4

    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    move-result v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 156
    move-object v4, v1

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public value(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/Headers;->namesAndValues:[Ljava/lang/String;

    move v3, v1

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public values(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move-object v2, v5

    .line 101
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v0

    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    move-result v5

    move v4, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_2

    .line 102
    move-object v5, v1

    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    move-object v5, v2

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 104
    :cond_0
    move-object v5, v2

    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 101
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_2
    move-object v5, v2

    if-eqz v5, :cond_3

    move-object v5, v2

    .line 108
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 107
    :goto_1
    move-object v0, v5

    return-object v0

    .line 109
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_1
.end method
