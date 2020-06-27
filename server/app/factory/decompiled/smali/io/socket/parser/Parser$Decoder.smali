.class public Lio/socket/parser/Parser$Decoder;
.super Lio/socket/emitter/Emitter;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/parser/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field public static EVENT_DECODED:Ljava/lang/String;


# instance fields
.field reconstructor:Lio/socket/parser/Parser$BinaryReconstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "decoded"

    sput-object v0, Lio/socket/parser/Parser$Decoder;->EVENT_DECODED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/emitter/Emitter;-><init>()V

    .line 145
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lio/socket/parser/Parser$Decoder;->reconstructor:Lio/socket/parser/Parser$BinaryReconstructor;

    .line 146
    return-void
.end method

.method private static decodeString(Ljava/lang/String;)Lio/socket/parser/Packet;
    .locals 14

    .prologue
    .line 174
    move-object v0, p0

    new-instance v7, Lio/socket/parser/Packet;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lio/socket/parser/Packet;-><init>()V

    move-object v1, v7

    .line 175
    const/4 v7, 0x0

    move v2, v7

    .line 176
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v3, v7

    .line 178
    move-object v7, v1

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v8

    iput v8, v7, Lio/socket/parser/Packet;->type:I

    .line 179
    move-object v7, v1

    iget v7, v7, Lio/socket/parser/Packet;->type:I

    if-ltz v7, :cond_0

    move-object v7, v1

    iget v7, v7, Lio/socket/parser/Packet;->type:I

    sget-object v8, Lio/socket/parser/Parser;->types:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-le v7, v8, :cond_1

    :cond_0
    invoke-static {}, Lio/socket/parser/Parser;->access$100()Lio/socket/parser/Packet;

    move-result-object v7

    move-object v0, v7

    .line 237
    :goto_0
    return-object v0

    .line 181
    :cond_1
    const/4 v7, 0x5

    move-object v8, v1

    iget v8, v8, Lio/socket/parser/Packet;->type:I

    if-eq v7, v8, :cond_2

    const/4 v7, 0x6

    move-object v8, v1

    iget v8, v8, Lio/socket/parser/Packet;->type:I

    if-ne v7, v8, :cond_6

    .line 182
    :cond_2
    move-object v7, v0

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v3

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    if-gt v7, v8, :cond_4

    :cond_3
    invoke-static {}, Lio/socket/parser/Parser;->access$100()Lio/socket/parser/Packet;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 183
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v7

    .line 184
    :goto_1
    move-object v7, v0

    add-int/lit8 v2, v2, 0x1

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_5

    .line 185
    move-object v7, v4

    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_1

    .line 187
    :cond_5
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lio/socket/parser/Packet;->attachments:I

    .line 190
    :cond_6
    move v7, v3

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    if-le v7, v8, :cond_b

    const/16 v7, 0x2f

    move-object v8, v0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_b

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v7

    .line 193
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 194
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    .line 195
    const/16 v7, 0x2c

    move v8, v5

    if-ne v7, v8, :cond_9

    .line 199
    :goto_3
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    .line 204
    :goto_4
    move v7, v3

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    if-le v7, v8, :cond_7

    .line 205
    move-object v7, v0

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    move-object v4, v7

    .line 206
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_7

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v7

    .line 209
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 210
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 211
    move v7, v6

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    if-gez v7, :cond_c

    .line 212
    add-int/lit8 v2, v2, -0x1

    .line 219
    :goto_6
    move-object v7, v1

    move-object v8, v5

    :try_start_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lio/socket/parser/Packet;->id:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_7
    move v7, v3

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    if-le v7, v8, :cond_8

    .line 228
    move-object v7, v0

    add-int/lit8 v2, v2, 0x1

    move v8, v2

    :try_start_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 229
    move-object v7, v1

    new-instance v8, Lorg/json/JSONTokener;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lio/socket/parser/Packet;->data:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    :cond_8
    invoke-static {}, Lio/socket/parser/Parser;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    const-string v8, "decoded %s as %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 237
    move-object v7, v1

    move-object v0, v7

    goto/16 :goto_0

    .line 196
    :cond_9
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 197
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    if-ne v7, v8, :cond_a

    goto/16 :goto_3

    .line 198
    :cond_a
    goto/16 :goto_2

    .line 201
    :cond_b
    move-object v7, v1

    const-string v8, "/"

    iput-object v8, v7, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    goto/16 :goto_4

    .line 215
    :cond_c
    move-object v7, v5

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 216
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    if-ne v7, v8, :cond_d

    goto :goto_6

    .line 217
    :cond_d
    goto/16 :goto_5

    .line 220
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 221
    invoke-static {}, Lio/socket/parser/Parser;->access$100()Lio/socket/parser/Packet;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 230
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 231
    invoke-static {}, Lio/socket/parser/Parser;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v9, "An error occured while retrieving data from JSONTokener"

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    invoke-static {}, Lio/socket/parser/Parser;->access$100()Lio/socket/parser/Packet;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Lio/socket/parser/Parser$Decoder;->decodeString(Ljava/lang/String;)Lio/socket/parser/Packet;

    move-result-object v3

    move-object v2, v3

    .line 150
    const/4 v3, 0x5

    move-object v4, v2

    iget v4, v4, Lio/socket/parser/Packet;->type:I

    if-eq v3, v4, :cond_0

    const/4 v3, 0x6

    move-object v4, v2

    iget v4, v4, Lio/socket/parser/Packet;->type:I

    if-ne v3, v4, :cond_2

    .line 151
    :cond_0
    move-object v3, v0

    new-instance v4, Lio/socket/parser/Parser$BinaryReconstructor;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-direct {v5, v6}, Lio/socket/parser/Parser$BinaryReconstructor;-><init>(Lio/socket/parser/Packet;)V

    iput-object v4, v3, Lio/socket/parser/Parser$Decoder;->reconstructor:Lio/socket/parser/Parser$BinaryReconstructor;

    .line 153
    move-object v3, v0

    iget-object v3, v3, Lio/socket/parser/Parser$Decoder;->reconstructor:Lio/socket/parser/Parser$BinaryReconstructor;

    iget-object v3, v3, Lio/socket/parser/Parser$BinaryReconstructor;->reconPack:Lio/socket/parser/Packet;

    iget v3, v3, Lio/socket/parser/Packet;->attachments:I

    if-nez v3, :cond_1

    .line 154
    move-object v3, v0

    sget-object v4, Lio/socket/parser/Parser$Decoder;->EVENT_DECODED:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/parser/Parser$Decoder;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    move-object v3, v0

    sget-object v4, Lio/socket/parser/Parser$Decoder;->EVENT_DECODED:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/parser/Parser$Decoder;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    goto :goto_0
.end method

.method public add([B)V
    .locals 10

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lio/socket/parser/Parser$Decoder;->reconstructor:Lio/socket/parser/Parser$BinaryReconstructor;

    if-nez v3, :cond_0

    .line 163
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "got binary data when not reconstructing a packet"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lio/socket/parser/Parser$Decoder;->reconstructor:Lio/socket/parser/Parser$BinaryReconstructor;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lio/socket/parser/Parser$BinaryReconstructor;->takeBinaryData([B)Lio/socket/parser/Packet;

    move-result-object v3

    move-object v2, v3

    .line 166
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 167
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lio/socket/parser/Parser$Decoder;->reconstructor:Lio/socket/parser/Parser$BinaryReconstructor;

    .line 168
    move-object v3, v0

    sget-object v4, Lio/socket/parser/Parser$Decoder;->EVENT_DECODED:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/parser/Parser$Decoder;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 171
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/parser/Parser$Decoder;->reconstructor:Lio/socket/parser/Parser$BinaryReconstructor;

    if-eqz v1, :cond_0

    .line 242
    move-object v1, v0

    iget-object v1, v1, Lio/socket/parser/Parser$Decoder;->reconstructor:Lio/socket/parser/Parser$BinaryReconstructor;

    invoke-virtual {v1}, Lio/socket/parser/Parser$BinaryReconstructor;->finishReconstruction()V

    .line 244
    :cond_0
    return-void
.end method
