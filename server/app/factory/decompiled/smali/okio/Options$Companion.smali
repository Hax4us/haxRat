.class public final Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "Options.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JT\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0002J!\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u0016\"\u00020\u0010H\u0007\u00a2\u0006\u0002\u0010\u0017R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Options$Companion;",
        "",
        "()V",
        "intCount",
        "",
        "Lokio/Buffer;",
        "getIntCount",
        "(Lokio/Buffer;)J",
        "buildTrieRecursive",
        "",
        "nodeOffset",
        "node",
        "byteStringOffset",
        "",
        "byteStrings",
        "",
        "Lokio/ByteString;",
        "fromIndex",
        "toIndex",
        "indexes",
        "of",
        "Lokio/Options;",
        "",
        "([Lokio/ByteString;)Lokio/Options;",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lokio/Options$Companion;-><init>()V

    return-void
.end method

.method private final buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List",
            "<+",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    const/16 v26, 0x1

    :goto_0
    move/from16 v11, v26

    const/16 v26, 0x0

    move/from16 v12, v26

    const/16 v26, 0x0

    move/from16 v13, v26

    const/16 v26, 0x0

    move/from16 v13, v26

    const/16 v26, 0x0

    move/from16 v14, v26

    move/from16 v26, v11

    if-nez v26, :cond_1

    const/16 v26, 0x0

    move/from16 v15, v26

    const-string v26, "Failed requirement."

    move-object/from16 v14, v26

    new-instance v26, Ljava/lang/IllegalArgumentException;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    move-object/from16 v28, v14

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v26, Ljava/lang/Throwable;

    throw v26

    :cond_0
    const/16 v26, 0x0

    goto :goto_0

    .line 117
    :cond_1
    move/from16 v26, v8

    move/from16 v11, v26

    move/from16 v26, v9

    move/from16 v12, v26

    :goto_1
    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 118
    move-object/from16 v26, v7

    move/from16 v27, v11

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lokio/ByteString;

    invoke-virtual/range {v26 .. v26}, Lokio/ByteString;->size()I

    move-result v26

    move/from16 v27, v6

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2

    const/16 v26, 0x1

    :goto_2
    move/from16 v13, v26

    const/16 v26, 0x0

    move/from16 v14, v26

    const/16 v26, 0x0

    move/from16 v15, v26

    const/16 v26, 0x0

    move/from16 v15, v26

    const/16 v26, 0x0

    move/from16 v16, v26

    move/from16 v26, v13

    if-nez v26, :cond_3

    const/16 v26, 0x0

    move/from16 v17, v26

    const-string v26, "Failed requirement."

    move-object/from16 v16, v26

    new-instance v26, Ljava/lang/IllegalArgumentException;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    move-object/from16 v28, v16

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v26, Ljava/lang/Throwable;

    throw v26

    :cond_2
    const/16 v26, 0x0

    goto :goto_2

    .line 117
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 121
    :cond_4
    move/from16 v26, v8

    move/from16 v11, v26

    .line 122
    move-object/from16 v26, v7

    move/from16 v27, v11

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lokio/ByteString;

    move-object/from16 v12, v26

    .line 123
    move-object/from16 v26, v7

    move/from16 v27, v9

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lokio/ByteString;

    move-object/from16 v13, v26

    .line 124
    const/16 v26, -0x1

    move/from16 v14, v26

    .line 127
    move/from16 v26, v6

    move-object/from16 v27, v12

    invoke-virtual/range {v27 .. v27}, Lokio/ByteString;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 128
    move-object/from16 v26, v10

    move/from16 v27, v11

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Number;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->intValue()I

    move-result v26

    move/from16 v14, v26

    .line 129
    add-int/lit8 v11, v11, 0x1

    .line 130
    move-object/from16 v26, v7

    move/from16 v27, v11

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lokio/ByteString;

    move-object/from16 v12, v26

    .line 133
    :cond_5
    move-object/from16 v26, v12

    move/from16 v27, v6

    invoke-virtual/range {v26 .. v27}, Lokio/ByteString;->getByte(I)B

    move-result v26

    move-object/from16 v27, v13

    move/from16 v28, v6

    invoke-virtual/range {v27 .. v28}, Lokio/ByteString;->getByte(I)B

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    .line 135
    const/16 v26, 0x1

    move/from16 v15, v26

    .line 136
    move/from16 v26, v11

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v16, v26

    move/from16 v26, v9

    move/from16 v17, v26

    :goto_3
    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 137
    move-object/from16 v26, v7

    move/from16 v27, v16

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lokio/ByteString;

    move/from16 v27, v6

    invoke-virtual/range {v26 .. v27}, Lokio/ByteString;->getByte(I)B

    move-result v26

    move-object/from16 v27, v7

    move/from16 v28, v16

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lokio/ByteString;

    move/from16 v28, v6

    invoke-virtual/range {v27 .. v28}, Lokio/ByteString;->getByte(I)B

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 138
    add-int/lit8 v15, v15, 0x1

    .line 136
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 143
    :cond_7
    move-wide/from16 v26, v3

    move-object/from16 v28, v2

    check-cast v28, Lokio/Options$Companion;

    move-object/from16 v29, v5

    invoke-direct/range {v28 .. v29}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v28

    add-long v26, v26, v28

    const/16 v28, 0x2

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move/from16 v28, v15

    const/16 v29, 0x2

    mul-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v16, v26

    .line 145
    move-object/from16 v26, v5

    move/from16 v27, v15

    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v26

    .line 146
    move-object/from16 v26, v5

    move/from16 v27, v14

    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v26

    .line 148
    move/from16 v26, v11

    move/from16 v18, v26

    move/from16 v26, v9

    move/from16 v19, v26

    :goto_4
    move/from16 v26, v18

    move/from16 v27, v19

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 149
    move-object/from16 v26, v7

    move/from16 v27, v18

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lokio/ByteString;

    move/from16 v27, v6

    invoke-virtual/range {v26 .. v27}, Lokio/ByteString;->getByte(I)B

    move-result v26

    move/from16 v20, v26

    .line 150
    move/from16 v26, v18

    move/from16 v27, v11

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    move/from16 v26, v20

    move-object/from16 v27, v7

    move/from16 v28, v18

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lokio/ByteString;

    move/from16 v28, v6

    invoke-virtual/range {v27 .. v28}, Lokio/ByteString;->getByte(I)B

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    .line 151
    :cond_8
    move-object/from16 v26, v5

    move/from16 v27, v20

    move/from16 v21, v27

    const/16 v27, 0xff

    move/from16 v22, v27

    move-object/from16 v24, v26

    const/16 v26, 0x0

    move/from16 v23, v26

    .line 243
    move/from16 v26, v21

    move/from16 v27, v22

    and-int v26, v26, v27

    move/from16 v25, v26

    move-object/from16 v26, v24

    move/from16 v27, v25

    .line 151
    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v26

    .line 148
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 155
    :cond_a
    new-instance v26, Lokio/Buffer;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    invoke-direct/range {v27 .. v27}, Lokio/Buffer;-><init>()V

    move-object/from16 v18, v26

    .line 156
    move/from16 v26, v11

    move/from16 v19, v26

    .line 157
    :goto_5
    move/from16 v26, v19

    move/from16 v27, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    .line 158
    move-object/from16 v26, v7

    move/from16 v27, v19

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lokio/ByteString;

    move/from16 v27, v6

    invoke-virtual/range {v26 .. v27}, Lokio/ByteString;->getByte(I)B

    move-result v26

    move/from16 v20, v26

    .line 159
    move/from16 v26, v9

    move/from16 v21, v26

    .line 160
    move/from16 v26, v19

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v22, v26

    move/from16 v26, v9

    move/from16 v23, v26

    :goto_6
    move/from16 v26, v22

    move/from16 v27, v23

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 161
    move/from16 v26, v20

    move-object/from16 v27, v7

    move/from16 v28, v22

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lokio/ByteString;

    move/from16 v28, v6

    invoke-virtual/range {v27 .. v28}, Lokio/ByteString;->getByte(I)B

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    .line 162
    move/from16 v26, v22

    move/from16 v21, v26

    .line 167
    :cond_b
    move/from16 v26, v19

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v27, v21

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 168
    move/from16 v26, v6

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v27, v7

    move/from16 v28, v19

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lokio/ByteString;

    invoke-virtual/range {v27 .. v27}, Lokio/ByteString;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 170
    move-object/from16 v26, v5

    move-object/from16 v27, v10

    move/from16 v28, v19

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Number;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->intValue()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v26

    .line 182
    :goto_7
    move/from16 v26, v21

    move/from16 v19, v26

    .line 157
    goto/16 :goto_5

    .line 160
    :cond_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 173
    :cond_d
    move-object/from16 v26, v5

    const/16 v27, -0x1

    move-wide/from16 v28, v16

    move-object/from16 v30, v2

    check-cast v30, Lokio/Options$Companion;

    move-object/from16 v31, v18

    invoke-direct/range {v30 .. v31}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v30

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    mul-int v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v26

    .line 174
    move-object/from16 v26, v2

    check-cast v26, Lokio/Options$Companion;

    .line 175
    move-wide/from16 v27, v16

    .line 176
    move-object/from16 v29, v18

    .line 177
    move/from16 v30, v6

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    .line 178
    move-object/from16 v31, v7

    .line 179
    move/from16 v32, v19

    .line 180
    move/from16 v33, v21

    .line 181
    move-object/from16 v34, v10

    .line 174
    invoke-direct/range {v26 .. v34}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    goto :goto_7

    .line 187
    :cond_e
    move-object/from16 v26, v5

    move-object/from16 v27, v18

    check-cast v27, Lokio/Source;

    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    move-result-wide v26

    .line 226
    :goto_8
    return-void

    .line 190
    :cond_f
    const/16 v26, 0x0

    move/from16 v15, v26

    .line 191
    move/from16 v26, v6

    move/from16 v16, v26

    move-object/from16 v26, v12

    invoke-virtual/range {v26 .. v26}, Lokio/ByteString;->size()I

    move-result v26

    move/from16 v18, v26

    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Lokio/ByteString;->size()I

    move-result v26

    move/from16 v19, v26

    const/16 v26, 0x0

    move/from16 v20, v26

    move/from16 v26, v18

    move/from16 v27, v19

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v17, v26

    :goto_9
    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 192
    move-object/from16 v26, v12

    move/from16 v27, v16

    invoke-virtual/range {v26 .. v27}, Lokio/ByteString;->getByte(I)B

    move-result v26

    move-object/from16 v27, v13

    move/from16 v28, v16

    invoke-virtual/range {v27 .. v28}, Lokio/ByteString;->getByte(I)B

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 193
    add-int/lit8 v15, v15, 0x1

    .line 196
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 200
    :cond_10
    move-wide/from16 v26, v3

    move-object/from16 v28, v2

    check-cast v28, Lokio/Options$Companion;

    move-object/from16 v29, v5

    invoke-direct/range {v28 .. v29}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v28

    add-long v26, v26, v28

    const/16 v28, 0x2

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move/from16 v28, v15

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    move-wide/from16 v16, v26

    .line 202
    move-object/from16 v26, v5

    move/from16 v27, v15

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v26

    .line 203
    move-object/from16 v26, v5

    move/from16 v27, v14

    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v26

    .line 205
    move/from16 v26, v6

    move/from16 v18, v26

    move/from16 v26, v6

    move/from16 v27, v15

    add-int v26, v26, v27

    move/from16 v19, v26

    :goto_a
    move/from16 v26, v18

    move/from16 v27, v19

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    .line 206
    move-object/from16 v26, v5

    move-object/from16 v27, v12

    move/from16 v28, v18

    invoke-virtual/range {v27 .. v28}, Lokio/ByteString;->getByte(I)B

    move-result v27

    move/from16 v20, v27

    const/16 v27, 0xff

    move/from16 v21, v27

    move-object/from16 v24, v26

    const/16 v26, 0x0

    move/from16 v22, v26

    .line 244
    move/from16 v26, v20

    move/from16 v27, v21

    and-int v26, v26, v27

    move/from16 v25, v26

    move-object/from16 v26, v24

    move/from16 v27, v25

    .line 206
    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v26

    .line 205
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 209
    :cond_11
    move/from16 v26, v11

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v27, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 211
    move/from16 v26, v6

    move/from16 v27, v15

    add-int v26, v26, v27

    move-object/from16 v27, v7

    move/from16 v28, v11

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lokio/ByteString;

    invoke-virtual/range {v27 .. v27}, Lokio/ByteString;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    const/16 v26, 0x1

    :goto_b
    move/from16 v18, v26

    const/16 v26, 0x0

    move/from16 v19, v26

    const/16 v26, 0x0

    move/from16 v20, v26

    const/16 v26, 0x0

    move/from16 v20, v26

    const/16 v26, 0x0

    move/from16 v21, v26

    move/from16 v26, v18

    if-nez v26, :cond_13

    const/16 v26, 0x0

    move/from16 v22, v26

    const-string v26, "Check failed."

    move-object/from16 v21, v26

    new-instance v26, Ljava/lang/IllegalStateException;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    move-object/from16 v28, v21

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v26, Ljava/lang/Throwable;

    throw v26

    :cond_12
    const/16 v26, 0x0

    goto :goto_b

    .line 212
    :cond_13
    move-object/from16 v26, v5

    move-object/from16 v27, v10

    move/from16 v28, v11

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Number;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->intValue()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v26

    goto/16 :goto_8

    .line 215
    :cond_14
    new-instance v26, Lokio/Buffer;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    invoke-direct/range {v27 .. v27}, Lokio/Buffer;-><init>()V

    move-object/from16 v18, v26

    .line 216
    move-object/from16 v26, v5

    const/16 v27, -0x1

    move-wide/from16 v28, v16

    move-object/from16 v30, v2

    check-cast v30, Lokio/Options$Companion;

    move-object/from16 v31, v18

    invoke-direct/range {v30 .. v31}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v30

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    mul-int v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v26

    .line 217
    move-object/from16 v26, v2

    check-cast v26, Lokio/Options$Companion;

    .line 218
    move-wide/from16 v27, v16

    .line 219
    move-object/from16 v29, v18

    .line 220
    move/from16 v30, v6

    move/from16 v31, v15

    add-int v30, v30, v31

    .line 221
    move-object/from16 v31, v7

    .line 222
    move/from16 v32, v11

    .line 223
    move/from16 v33, v9

    .line 224
    move-object/from16 v34, v10

    .line 217
    invoke-direct/range {v26 .. v34}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 225
    move-object/from16 v26, v5

    move-object/from16 v27, v18

    check-cast v27, Lokio/Source;

    invoke-virtual/range {v26 .. v27}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    move-result-wide v26

    goto/16 :goto_8
.end method

.method static synthetic buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move v11, v9

    const/4 v12, 0x1

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    .line 108
    const-wide/16 v11, 0x0

    move-wide v1, v11

    :cond_0
    move v11, v9

    const/4 v12, 0x4

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_1

    .line 110
    const/4 v11, 0x0

    move v4, v11

    :cond_1
    move v11, v9

    const/16 v12, 0x10

    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_2

    .line 112
    const/4 v11, 0x0

    move v6, v11

    :cond_2
    move v11, v9

    const/16 v12, 0x20

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_3

    .line 113
    move-object v11, v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move v7, v11

    :cond_3
    move-object v11, v0

    move-wide v12, v1

    move-object v14, v3

    move v15, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v11 .. v19}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    return-void
.end method

.method private final getIntCount(Lokio/Buffer;)J
    .locals 6
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const/4 v4, 0x4

    int-to-long v4, v4

    div-long/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method


# virtual methods
.method public final varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 35
    .param p1    # [Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v23, v3

    const-string v24, "byteStrings"

    invoke-static/range {v23 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object/from16 v23, v3

    move-object/from16 v4, v23

    const/16 v23, 0x0

    move/from16 v5, v23

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_0

    const/16 v23, 0x1

    :goto_0
    if-eqz v23, :cond_1

    .line 36
    new-instance v23, Lokio/Options;

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Lokio/ByteString;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v23

    .line 80
    :goto_1
    return-object v2

    .line 34
    :cond_0
    const/16 v23, 0x0

    goto :goto_0

    .line 41
    :cond_1
    move-object/from16 v23, v3

    invoke-static/range {v23 .. v23}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v4, v23

    .line 42
    move-object/from16 v23, v4

    invoke-static/range {v23 .. v23}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 43
    move-object/from16 v23, v3

    move-object/from16 v6, v23

    const/16 v23, 0x0

    move/from16 v7, v23

    .line 234
    move-object/from16 v23, v6

    move-object/from16 v8, v23

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    move-object/from16 v25, v6

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v23, Ljava/util/Collection;

    move-object/from16 v9, v23

    const/16 v23, 0x0

    move/from16 v10, v23

    .line 235
    move-object/from16 v23, v8

    move-object/from16 v11, v23

    move-object/from16 v23, v11

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v12, v23

    const/16 v23, 0x0

    move/from16 v13, v23

    :goto_2
    move/from16 v23, v13

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    move-object/from16 v23, v11

    move/from16 v24, v13

    aget-object v23, v23, v24

    move-object/from16 v14, v23

    .line 236
    move-object/from16 v23, v9

    move-object/from16 v24, v14

    move-object/from16 v15, v24

    move-object/from16 v17, v23

    const/16 v23, 0x0

    move/from16 v16, v23

    .line 43
    const/16 v23, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v18, v23

    move-object/from16 v23, v17

    move-object/from16 v24, v18

    invoke-interface/range {v23 .. v24}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v23

    .line 235
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 237
    :cond_2
    move-object/from16 v23, v9

    check-cast v23, Ljava/util/List;

    check-cast v23, Ljava/util/Collection;

    move-object/from16 v6, v23

    .line 43
    const/16 v23, 0x0

    move/from16 v7, v23

    .line 238
    move-object/from16 v23, v6

    move-object/from16 v8, v23

    .line 239
    move-object/from16 v23, v8

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    if-nez v24, :cond_3

    new-instance v24, Lkotlin/TypeCastException;

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    const-string v26, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct/range {v25 .. v26}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_3
    check-cast v23, [Ljava/lang/Integer;

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/Integer;

    .line 43
    invoke-static/range {v23 .. v23}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v5, v23

    .line 44
    move-object/from16 v23, v3

    move-object/from16 v6, v23

    const/16 v23, 0x0

    move/from16 v7, v23

    .line 240
    const/16 v23, 0x0

    move/from16 v8, v23

    .line 241
    move-object/from16 v23, v6

    move-object/from16 v9, v23

    move-object/from16 v23, v9

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v10, v23

    const/16 v23, 0x0

    move/from16 v11, v23

    :goto_3
    move/from16 v23, v11

    move/from16 v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    move-object/from16 v23, v9

    move/from16 v24, v11

    aget-object v23, v23, v24

    move-object/from16 v12, v23

    move/from16 v23, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v24, v12

    move-object/from16 v13, v24

    move/from16 v14, v23

    const/16 v23, 0x0

    move/from16 v15, v23

    .line 45
    move-object/from16 v23, v4

    move-object/from16 v24, v13

    check-cast v24, Ljava/lang/Comparable;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x6

    const/16 v28, 0x0

    invoke-static/range {v23 .. v28}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result v23

    move/from16 v16, v23

    .line 46
    move-object/from16 v23, v5

    move/from16 v24, v16

    move/from16 v25, v14

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 47
    nop

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 242
    :cond_4
    nop

    .line 48
    move-object/from16 v23, v4

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lokio/ByteString;

    invoke-virtual/range {v23 .. v23}, Lokio/ByteString;->size()I

    move-result v23

    if-lez v23, :cond_5

    const/16 v23, 0x1

    :goto_4
    move/from16 v6, v23

    const/16 v23, 0x0

    move/from16 v7, v23

    const/16 v23, 0x0

    move/from16 v8, v23

    move/from16 v23, v6

    if-nez v23, :cond_6

    const/16 v23, 0x0

    move/from16 v9, v23

    const-string v23, "the empty byte string is not a supported option"

    move-object/from16 v8, v23

    new-instance v23, Ljava/lang/IllegalArgumentException;

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    move-object/from16 v25, v8

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v23, Ljava/lang/Throwable;

    throw v23

    :cond_5
    const/16 v23, 0x0

    goto :goto_4

    .line 53
    :cond_6
    const/16 v23, 0x0

    move/from16 v6, v23

    .line 54
    :goto_5
    move/from16 v23, v6

    move-object/from16 v24, v4

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    .line 55
    move-object/from16 v23, v4

    move/from16 v24, v6

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lokio/ByteString;

    move-object/from16 v7, v23

    .line 56
    move/from16 v23, v6

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v8, v23

    .line 57
    :goto_6
    move/from16 v23, v8

    move-object/from16 v24, v4

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 58
    move-object/from16 v23, v4

    move/from16 v24, v8

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lokio/ByteString;

    move-object/from16 v9, v23

    .line 59
    move-object/from16 v23, v9

    move-object/from16 v24, v7

    invoke-virtual/range {v23 .. v24}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 68
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 54
    goto :goto_5

    .line 60
    :cond_8
    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Lokio/ByteString;->size()I

    move-result v23

    move-object/from16 v24, v7

    invoke-virtual/range {v24 .. v24}, Lokio/ByteString;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    const/16 v23, 0x1

    :goto_7
    move/from16 v10, v23

    const/16 v23, 0x0

    move/from16 v11, v23

    const/16 v23, 0x0

    move/from16 v12, v23

    move/from16 v23, v10

    if-nez v23, :cond_a

    const/16 v23, 0x0

    move/from16 v13, v23

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "duplicate option: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v9

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v12, v23

    new-instance v23, Ljava/lang/IllegalArgumentException;

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    move-object/from16 v25, v12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v23, Ljava/lang/Throwable;

    throw v23

    :cond_9
    const/16 v23, 0x0

    goto :goto_7

    .line 61
    :cond_a
    move-object/from16 v23, v5

    move/from16 v24, v8

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->intValue()I

    move-result v23

    move-object/from16 v24, v5

    move/from16 v25, v6

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Number;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->intValue()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 62
    move-object/from16 v23, v4

    move/from16 v24, v8

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v23

    .line 63
    move-object/from16 v23, v5

    move/from16 v24, v8

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v23

    .line 66
    :goto_8
    goto/16 :goto_6

    .line 65
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 71
    :cond_c
    new-instance v23, Lokio/Buffer;

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    invoke-direct/range {v24 .. v24}, Lokio/Buffer;-><init>()V

    move-object/from16 v7, v23

    .line 72
    move-object/from16 v23, v2

    check-cast v23, Lokio/Options$Companion;

    const-wide/16 v24, 0x0

    move-object/from16 v26, v7

    const/16 v27, 0x0

    move-object/from16 v28, v4

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v31, v5

    const/16 v32, 0x35

    const/16 v33, 0x0

    invoke-static/range {v23 .. v33}, Lokio/Options$Companion;->buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V

    .line 74
    move-object/from16 v23, v2

    check-cast v23, Lokio/Options$Companion;

    move-object/from16 v24, v7

    invoke-direct/range {v23 .. v24}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move-object/from16 v8, v23

    .line 75
    const/16 v23, 0x0

    move/from16 v9, v23

    .line 76
    :goto_9
    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->exhausted()Z

    move-result v23

    if-nez v23, :cond_d

    .line 77
    move-object/from16 v23, v8

    move/from16 v24, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v25, v7

    invoke-virtual/range {v25 .. v25}, Lokio/Buffer;->readInt()I

    move-result v25

    aput v25, v23, v24

    .line 76
    goto :goto_9

    .line 80
    :cond_d
    move-object/from16 v23, v3

    move-object/from16 v10, v23

    const/16 v23, 0x0

    move/from16 v11, v23

    move-object/from16 v23, v10

    move-object/from16 v24, v10

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    const-string v25, "java.util.Arrays.copyOf(this, size)"

    invoke-static/range {v24 .. v25}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v23

    move-object/from16 v23, v19

    check-cast v23, [Lokio/ByteString;

    move-object/from16 v24, v8

    const/16 v25, 0x0

    move-object/from16 v20, v25

    move-object/from16 v21, v24

    move-object/from16 v22, v23

    new-instance v23, Lokio/Options;

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    move-object/from16 v25, v22

    move-object/from16 v26, v21

    move-object/from16 v27, v20

    invoke-direct/range {v24 .. v27}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v23

    goto/16 :goto_1

    .line 36
    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method
