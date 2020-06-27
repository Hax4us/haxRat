.class final Lio/socket/engineio/parser/Parser$2;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Lio/socket/engineio/parser/Parser$EncodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/parser/Parser;->encodePayload([Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lio/socket/engineio/parser/Parser$2;->val$results:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 125
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 126
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    move-object v3, v5

    .line 128
    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    .line 129
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 130
    move-object v5, v3

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v2

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    :cond_0
    move-object v5, v3

    move-object v6, v3

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, -0x1

    aput-byte v7, v5, v6

    .line 133
    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/parser/Parser$2;->val$results:Ljava/util/ArrayList;

    const/4 v6, 0x2

    new-array v6, v6, [[B

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lio/socket/engineio/parser/Parser;->access$000(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6}, Lio/socket/engineio/parser/Buffer;->concat([[B)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 145
    :goto_1
    return-void

    .line 137
    :cond_1
    move-object v5, v1

    check-cast v5, [B

    check-cast v5, [B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 138
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    move-object v3, v5

    .line 139
    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    .line 140
    const/4 v5, 0x0

    move v4, v5

    :goto_2
    move v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 141
    move-object v5, v3

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v2

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 143
    :cond_2
    move-object v5, v3

    move-object v6, v3

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, -0x1

    aput-byte v7, v5, v6

    .line 144
    move-object v5, v0

    iget-object v5, v5, Lio/socket/engineio/parser/Parser$2;->val$results:Ljava/util/ArrayList;

    const/4 v6, 0x2

    new-array v6, v6, [[B

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v1

    check-cast v9, [B

    check-cast v9, [B

    aput-object v9, v7, v8

    invoke-static {v6}, Lio/socket/engineio/parser/Buffer;->concat([[B)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 145
    goto :goto_1
.end method
