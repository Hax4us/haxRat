.class public final Lokhttp3/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

.field private static final TYPE_SUBTYPE:Ljava/util/regex/Pattern;


# instance fields
.field private final charset:Ljava/lang/String;

.field private final mediaType:Ljava/lang/String;

.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    .line 41
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lokhttp3/MediaType;->type:Ljava/lang/String;

    .line 42
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lokhttp3/MediaType;->subtype:Ljava/lang/String;

    .line 43
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 17

    .prologue
    .line 51
    move-object/from16 v0, p0

    sget-object v10, Lokhttp3/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object v1, v10

    .line 52
    move-object v10, v1

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    move-object v0, v10

    .line 81
    :goto_0
    return-object v0

    .line 53
    :cond_0
    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 54
    move-object v10, v1

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 56
    const/4 v10, 0x0

    move-object v4, v10

    .line 57
    sget-object v10, Lokhttp3/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move-object v5, v10

    .line 58
    move-object v10, v1

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    move v6, v10

    :goto_1
    move v10, v6

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_7

    .line 59
    move-object v10, v5

    move v11, v6

    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 60
    move-object v10, v5

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 62
    :cond_1
    move-object v10, v5

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 63
    move-object v10, v7

    if-eqz v10, :cond_2

    move-object v10, v7

    const-string v11, "charset"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 58
    :cond_2
    :goto_2
    move-object v10, v5

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    move v6, v10

    goto :goto_1

    .line 65
    :cond_3
    move-object v10, v5

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 66
    move-object v10, v9

    if-eqz v10, :cond_5

    .line 68
    move-object v10, v9

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v9

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_4

    move-object v10, v9

    const/4 v11, 0x1

    move-object v12, v9

    .line 69
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :goto_3
    move-object v8, v10

    .line 75
    :goto_4
    move-object v10, v4

    if-eqz v10, :cond_6

    move-object v10, v8

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 76
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Multiple different charsets: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 69
    :cond_4
    move-object v10, v9

    goto :goto_3

    .line 73
    :cond_5
    move-object v10, v5

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    goto :goto_4

    .line 78
    :cond_6
    move-object v10, v8

    move-object v4, v10

    goto :goto_2

    .line 81
    :cond_7
    new-instance v10, Lokhttp3/MediaType;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v11, v12, v13, v14, v15}, Lokhttp3/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    goto/16 :goto_0
.end method


# virtual methods
.method public charset()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lokhttp3/MediaType;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lokhttp3/MediaType;

    iget-object v2, v2, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public subtype()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MediaType;->subtype:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/MediaType;->type:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
