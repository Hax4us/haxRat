.class public final Lokhttp3/HttpUrl;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/HttpUrl$Builder;
    }
.end annotation


# static fields
.field static final FORM_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

.field static final FRAGMENT_ENCODE_SET:Ljava/lang/String; = ""

.field static final FRAGMENT_ENCODE_SET_URI:Ljava/lang/String; = " \"#<>\\^`{|}"

.field private static final HEX_DIGITS:[C

.field static final PASSWORD_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET_URI:Ljava/lang/String; = "[]"

.field static final QUERY_COMPONENT_ENCODE_SET:Ljava/lang/String; = " \"\'<>#&="

.field static final QUERY_COMPONENT_ENCODE_SET_URI:Ljava/lang/String; = "\\^`{|}"

.field static final QUERY_ENCODE_SET:Ljava/lang/String; = " \"\'<>#"

.field static final USERNAME_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"


# instance fields
.field private final fragment:Ljava/lang/String;

.field final host:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final port:I

.field private final queryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 285
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/HttpUrl;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Lokhttp3/HttpUrl$Builder;)V
    .locals 6

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 334
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 335
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/HttpUrl;->username:Ljava/lang/String;

    .line 336
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/HttpUrl;->password:Ljava/lang/String;

    .line 337
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 338
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v3

    iput v3, v2, Lokhttp3/HttpUrl;->port:I

    .line 339
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lokhttp3/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    .line 340
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v5, 0x1

    .line 341
    invoke-direct {v3, v4, v5}, Lokhttp3/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    .line 343
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v1

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    const/4 v4, 0x0

    .line 344
    invoke-static {v3, v4}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v2, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;

    .line 346
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 347
    return-void

    .line 341
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 344
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 21

    .prologue
    .line 1809
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move v11, v1

    move v9, v11

    :goto_0
    move v11, v9

    move v12, v2

    if-ge v11, v12, :cond_4

    .line 1810
    move-object v11, v0

    move v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    move v8, v11

    .line 1811
    move v11, v8

    const/16 v12, 0x20

    if-lt v11, v12, :cond_2

    move v11, v8

    const/16 v12, 0x7f

    if-eq v11, v12, :cond_2

    move v11, v8

    const/16 v12, 0x80

    if-lt v11, v12, :cond_0

    move v11, v7

    if-nez v11, :cond_2

    :cond_0
    move-object v11, v3

    move v12, v8

    .line 1814
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    move v11, v8

    const/16 v12, 0x25

    if-ne v11, v12, :cond_1

    move v11, v4

    if-eqz v11, :cond_2

    move v11, v5

    if-eqz v11, :cond_1

    move-object v11, v0

    move v12, v9

    move v13, v2

    .line 1815
    invoke-static {v11, v12, v13}, Lokhttp3/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    move v11, v8

    const/16 v12, 0x2b

    if-ne v11, v12, :cond_3

    move v11, v6

    if-eqz v11, :cond_3

    .line 1818
    :cond_2
    new-instance v11, Lokio/Buffer;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Lokio/Buffer;-><init>()V

    move-object v10, v11

    .line 1819
    move-object v11, v10

    move-object v12, v0

    move v13, v1

    move v14, v9

    invoke-virtual {v11, v12, v13, v14}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v11

    .line 1820
    move-object v11, v10

    move-object v12, v0

    move v13, v9

    move v14, v2

    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-static/range {v11 .. v19}, Lokhttp3/HttpUrl;->canonicalize(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 1822
    move-object v11, v10

    invoke-virtual {v11}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .line 1827
    :goto_1
    return-object v0

    .line 1809
    :cond_3
    move v11, v9

    move v12, v8

    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    goto :goto_0

    .line 1827
    :cond_4
    move-object v11, v0

    move v12, v1

    move v13, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_1
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 14

    .prologue
    .line 1867
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    .line 1868
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    .line 1867
    invoke-static/range {v6 .. v13}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method static canonicalize(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V
    .locals 18

    .prologue
    .line 1832
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    const/4 v13, 0x0

    move-object v9, v13

    .line 1834
    move v13, v2

    move v11, v13

    :goto_0
    move v13, v11

    move v14, v3

    if-ge v13, v14, :cond_8

    .line 1835
    move-object v13, v1

    move v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    move v10, v13

    .line 1836
    move v13, v5

    if-eqz v13, :cond_1

    move v13, v10

    const/16 v14, 0x9

    if-eq v13, v14, :cond_0

    move v13, v10

    const/16 v14, 0xa

    if-eq v13, v14, :cond_0

    move v13, v10

    const/16 v14, 0xc

    if-eq v13, v14, :cond_0

    move v13, v10

    const/16 v14, 0xd

    if-ne v13, v14, :cond_1

    .line 1834
    :cond_0
    :goto_1
    move v13, v11

    move v14, v10

    invoke-static {v14}, Ljava/lang/Character;->charCount(I)I

    move-result v14

    add-int/2addr v13, v14

    move v11, v13

    goto :goto_0

    .line 1839
    :cond_1
    move v13, v10

    const/16 v14, 0x2b

    if-ne v13, v14, :cond_3

    move v13, v7

    if-eqz v13, :cond_3

    .line 1841
    move-object v13, v0

    move v14, v5

    if-eqz v14, :cond_2

    const-string v14, "+"

    :goto_2
    invoke-virtual {v13, v14}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v13

    goto :goto_1

    :cond_2
    const-string v14, "%2B"

    goto :goto_2

    .line 1842
    :cond_3
    move v13, v10

    const/16 v14, 0x20

    if-lt v13, v14, :cond_5

    move v13, v10

    const/16 v14, 0x7f

    if-eq v13, v14, :cond_5

    move v13, v10

    const/16 v14, 0x80

    if-lt v13, v14, :cond_4

    move v13, v8

    if-nez v13, :cond_5

    :cond_4
    move-object v13, v4

    move v14, v10

    .line 1845
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    move v13, v10

    const/16 v14, 0x25

    if-ne v13, v14, :cond_7

    move v13, v5

    if-eqz v13, :cond_5

    move v13, v6

    if-eqz v13, :cond_7

    move-object v13, v1

    move v14, v11

    move v15, v3

    .line 1846
    invoke-static {v13, v14, v15}, Lokhttp3/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v13

    if-nez v13, :cond_7

    .line 1848
    :cond_5
    move-object v13, v9

    if-nez v13, :cond_6

    .line 1849
    new-instance v13, Lokio/Buffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Lokio/Buffer;-><init>()V

    move-object v9, v13

    .line 1851
    :cond_6
    move-object v13, v9

    move v14, v10

    invoke-virtual {v13, v14}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v13

    .line 1852
    :goto_3
    move-object v13, v9

    invoke-virtual {v13}, Lokio/Buffer;->exhausted()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1853
    move-object v13, v9

    invoke-virtual {v13}, Lokio/Buffer;->readByte()B

    move-result v13

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v12, v13

    .line 1854
    move-object v13, v0

    const/16 v14, 0x25

    invoke-virtual {v13, v14}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v13

    .line 1855
    move-object v13, v0

    sget-object v14, Lokhttp3/HttpUrl;->HEX_DIGITS:[C

    move v15, v12

    const/16 v16, 0x4

    shr-int/lit8 v15, v15, 0x4

    const/16 v16, 0xf

    and-int/lit8 v15, v15, 0xf

    aget-char v14, v14, v15

    invoke-virtual {v13, v14}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v13

    .line 1856
    move-object v13, v0

    sget-object v14, Lokhttp3/HttpUrl;->HEX_DIGITS:[C

    move v15, v12

    const/16 v16, 0xf

    and-int/lit8 v15, v15, 0xf

    aget-char v14, v14, v15

    invoke-virtual {v13, v14}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v13

    .line 1857
    goto :goto_3

    .line 1860
    :cond_7
    move-object v13, v0

    move v14, v10

    invoke-virtual {v13, v14}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v13

    goto/16 :goto_1

    .line 1863
    :cond_8
    return-void
.end method

.method static decodeHexDigit(C)I
    .locals 3

    .prologue
    .line 1784
    move v0, p0

    move v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x30

    add-int/lit8 v1, v1, -0x30

    move v0, v1

    .line 1787
    :goto_0
    return v0

    .line 1785
    :cond_0
    move v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x66

    if-gt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x61

    add-int/lit8 v1, v1, -0x61

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 1786
    :cond_1
    move v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x46

    if-gt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x41

    add-int/lit8 v1, v1, -0x41

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 1787
    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static defaultPort(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 505
    move-object v0, p0

    move-object v1, v0

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    const/16 v1, 0x50

    move v0, v1

    .line 510
    :goto_0
    return v0

    .line 507
    :cond_0
    move-object v1, v0

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    const/16 v1, 0x1bb

    move v0, v1

    goto :goto_0

    .line 510
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static get(Ljava/net/URI;)Lokhttp3/HttpUrl;
    .locals 2

    .prologue
    .line 933
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static get(Ljava/net/URL;)Lokhttp3/HttpUrl;
    .locals 2

    .prologue
    .line 906
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static getChecked(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 917
    move-object v0, p0

    new-instance v3, Lokhttp3/HttpUrl$Builder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lokhttp3/HttpUrl$Builder;-><init>()V

    move-object v1, v3

    .line 918
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;

    move-result-object v3

    move-object v2, v3

    .line 919
    sget-object v3, Lokhttp3/HttpUrl$1;->$SwitchMap$okhttp3$HttpUrl$Builder$ParseResult:[I

    move-object v4, v2

    invoke-virtual {v4}, Lokhttp3/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 928
    new-instance v3, Ljava/net/MalformedURLException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 921
    :pswitch_0
    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 923
    :pswitch_1
    new-instance v3, Ljava/net/UnknownHostException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 919
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move v2, v6

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v3, v6

    :goto_0
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 616
    move-object v6, v1

    move v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 617
    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 618
    move v6, v2

    if-lez v6, :cond_0

    move-object v6, v0

    const/16 v7, 0x26

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 619
    :cond_0
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 620
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 621
    move-object v6, v0

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 622
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 615
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 625
    :cond_2
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 7

    .prologue
    .line 896
    move-object v0, p0

    new-instance v3, Lokhttp3/HttpUrl$Builder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lokhttp3/HttpUrl$Builder;-><init>()V

    move-object v1, v3

    .line 897
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;

    move-result-object v3

    move-object v2, v3

    .line 898
    move-object v3, v2

    sget-object v4, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    if-ne v3, v4, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 548
    move-object v4, v0

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 549
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    :cond_0
    return-void
.end method

.method static percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 13

    .prologue
    .line 1741
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move v7, v1

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v2

    if-ge v7, v8, :cond_2

    .line 1742
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    .line 1743
    move v7, v5

    const/16 v8, 0x25

    if-eq v7, v8, :cond_0

    move v7, v5

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_1

    move v7, v3

    if-eqz v7, :cond_1

    .line 1745
    :cond_0
    new-instance v7, Lokio/Buffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    move-object v6, v7

    .line 1746
    move-object v7, v6

    move-object v8, v0

    move v9, v1

    move v10, v4

    invoke-virtual {v7, v8, v9, v10}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v7

    .line 1747
    move-object v7, v6

    move-object v8, v0

    move v9, v4

    move v10, v2

    move v11, v3

    invoke-static {v7, v8, v9, v10, v11}, Lokhttp3/HttpUrl;->percentDecode(Lokio/Buffer;Ljava/lang/String;IIZ)V

    .line 1748
    move-object v7, v6

    invoke-virtual {v7}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 1753
    :goto_1
    return-object v0

    .line 1741
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1753
    :cond_2
    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_1
.end method

.method static percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1727
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v1

    invoke-static {v2, v3, v4, v5}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private percentDecode(Ljava/util/List;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1731
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v3, v7

    .line 1732
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v3

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v7

    .line 1733
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 1734
    move-object v7, v1

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 1735
    move-object v7, v4

    move-object v8, v6

    if-eqz v8, :cond_0

    move-object v8, v6

    move v9, v2

    invoke-static {v8, v9}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1733
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1735
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 1737
    :cond_1
    move-object v7, v4

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static percentDecode(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .locals 12

    .prologue
    .line 1758
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v9, v2

    move v6, v9

    :goto_0
    move v9, v6

    move v10, v3

    if-ge v9, v10, :cond_2

    .line 1759
    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    move v5, v9

    .line 1760
    move v9, v5

    const/16 v10, 0x25

    if-ne v9, v10, :cond_1

    move v9, v6

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move v10, v3

    if-ge v9, v10, :cond_1

    .line 1761
    move-object v9, v1

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lokhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    move v7, v9

    .line 1762
    move-object v9, v1

    move v10, v6

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lokhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    move v8, v9

    .line 1763
    move v9, v7

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    move v9, v8

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 1764
    move-object v9, v0

    move v10, v7

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    move v11, v8

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v9

    .line 1765
    add-int/lit8 v6, v6, 0x2

    .line 1758
    :goto_1
    move v9, v6

    move v10, v5

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v9, v10

    move v6, v9

    goto :goto_0

    .line 1772
    :cond_0
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v9

    goto :goto_1

    .line 1768
    :cond_1
    move v9, v5

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_0

    move v9, v4

    if-eqz v9, :cond_0

    .line 1769
    move-object v9, v0

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v9

    .line 1770
    goto :goto_1

    .line 1774
    :cond_2
    return-void
.end method

.method static percentEncoded(Ljava/lang/String;II)Z
    .locals 6

    .prologue
    .line 1777
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    move v4, v2

    if-ge v3, v4, :cond_0

    move-object v3, v0

    move v4, v1

    .line 1778
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 1779
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    .line 1780
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    .line 1777
    :goto_0
    move v0, v3

    return v0

    .line 1780
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    .locals 10
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
    .line 634
    move-object v0, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 635
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_3

    .line 636
    move-object v5, v0

    const/16 v6, 0x26

    move v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    move v3, v5

    .line 637
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    .line 639
    :cond_0
    move-object v5, v0

    const/16 v6, 0x3d

    move v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    move v4, v5

    .line 640
    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_2

    .line 641
    :cond_1
    move-object v5, v1

    move-object v6, v0

    move v7, v2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 642
    move-object v5, v1

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 647
    :goto_1
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v2, v5

    .line 648
    goto :goto_0

    .line 644
    :cond_2
    move-object v5, v1

    move-object v6, v0

    move v7, v2

    move v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 645
    move-object v5, v1

    move-object v6, v0

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 649
    :cond_3
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public encodedFragment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 823
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 825
    :goto_0
    return-object v0

    .line 824
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    .line 825
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public encodedPassword()Ljava/lang/String;
    .locals 7

    .prologue
    .line 440
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    move-object v0, v3

    .line 443
    :goto_0
    return-object v0

    .line 441
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v4, 0x3a

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 442
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v2, v3

    .line 443
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public encodedPath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 541
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v4, 0x2f

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    move v1, v3

    .line 542
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "?#"

    invoke-static {v3, v4, v5, v6}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    move v2, v3

    .line 543
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public encodedPathSegments()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v7, 0x2f

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v1, v6

    .line 566
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "?#"

    invoke-static {v6, v7, v8, v9}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v6

    move v2, v6

    .line 567
    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 568
    move v6, v1

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 569
    add-int/lit8 v4, v4, 0x1

    .line 570
    move-object v6, v0

    iget-object v6, v6, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move v7, v4

    move v8, v2

    const/16 v9, 0x2f

    invoke-static {v6, v7, v8, v9}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v6

    move v5, v6

    .line 571
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move v8, v4

    move v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 572
    move v6, v5

    move v4, v6

    .line 573
    goto :goto_0

    .line 574
    :cond_0
    move-object v6, v3

    move-object v0, v6

    return-object v0
.end method

.method public encodedQuery()Ljava/lang/String;
    .locals 7

    .prologue
    .line 608
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 611
    :goto_0
    return-object v0

    .line 609
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 610
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x23

    invoke-static {v3, v4, v5, v6}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v3

    move v2, v3

    .line 611
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public encodedUsername()Ljava/lang/String;
    .locals 7

    .prologue
    .line 407
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    move-object v0, v3

    .line 410
    :goto_0
    return-object v0

    .line 408
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x3

    move v1, v3

    .line 409
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ":@"

    invoke-static {v3, v4, v5, v6}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    move v2, v3

    .line 410
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 937
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lokhttp3/HttpUrl;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lokhttp3/HttpUrl;

    iget-object v2, v2, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

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

.method public fragment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 841
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 941
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public host()Ljava/lang/String;
    .locals 2

    .prologue
    .line 481
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isHttps()Z
    .locals 3

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public newBuilder()Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    .line 867
    move-object v0, p0

    new-instance v2, Lokhttp3/HttpUrl$Builder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lokhttp3/HttpUrl$Builder;-><init>()V

    move-object v1, v2

    .line 868
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 869
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 870
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 871
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 873
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lokhttp3/HttpUrl;->port:I

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-static {v4}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lokhttp3/HttpUrl;->port:I

    :goto_0
    iput v3, v2, Lokhttp3/HttpUrl$Builder;->port:I

    .line 874
    move-object v2, v1

    iget-object v2, v2, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 875
    move-object v2, v1

    iget-object v2, v2, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 876
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 877
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedFragment()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 878
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 873
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 8

    .prologue
    .line 886
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Lokhttp3/HttpUrl$Builder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lokhttp3/HttpUrl$Builder;-><init>()V

    move-object v2, v4

    .line 887
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lokhttp3/HttpUrl$Builder;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;

    move-result-object v4

    move-object v3, v4

    .line 888
    move-object v4, v3

    sget-object v5, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    if-ne v4, v5, :cond_0

    move-object v4, v2

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public password()Ljava/lang/String;
    .locals 2

    .prologue
    .line 458
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->password:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public pathSegments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public pathSize()I
    .locals 2

    .prologue
    .line 526
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public port()I
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/HttpUrl;->port:I

    move v0, v1

    return v0
.end method

.method public query()Ljava/lang/String;
    .locals 5

    .prologue
    .line 668
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 671
    :goto_0
    return-object v0

    .line 669
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 670
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-static {v2, v3}, Lokhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 671
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public queryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 706
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 712
    :goto_0
    return-object v0

    .line 707
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    :goto_1
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_2

    .line 708
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 709
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    goto :goto_0

    .line 707
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 712
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public queryParameterName(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 784
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 785
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    move v3, v1

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public queryParameterNames()Ljava/util/Set;
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
    .line 729
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    move-object v0, v4

    .line 734
    :goto_0
    return-object v0

    .line 730
    :cond_0
    new-instance v4, Ljava/util/LinkedHashSet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v1, v4

    .line 731
    const/4 v4, 0x0

    move v2, v4

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    :goto_1
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    .line 732
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 731
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 734
    :cond_1
    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public queryParameterValue(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 806
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 807
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    move v3, v1

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public queryParameterValues(Ljava/lang/String;)Ljava/util/List;
    .locals 10
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
    .line 756
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v5, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    .line 763
    :goto_0
    return-object v0

    .line 757
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 758
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    :goto_1
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_2

    .line 759
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 760
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 758
    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 763
    :cond_2
    move-object v5, v2

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public querySize()I
    .locals 3

    .prologue
    .line 689
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public redact()Ljava/lang/String;
    .locals 3

    .prologue
    .line 850
    move-object v0, p0

    move-object v1, v0

    const-string v2, "/..."

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, ""

    .line 851
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, ""

    .line 852
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 853
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 854
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    .line 850
    move-object v0, v1

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 5

    .prologue
    .line 862
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    move-object v2, v3

    .line 863
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public scheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 945
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public uri()Ljava/net/URI;
    .locals 8

    .prologue
    .line 372
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl$Builder;->reencodeForUri()Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 374
    :try_start_0
    new-instance v4, Ljava/net/URI;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 379
    :goto_0
    return-object v0

    .line 375
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 378
    move-object v4, v1

    :try_start_1
    const-string v5, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 379
    move-object v4, v3

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 380
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 381
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public url()Ljava/net/URL;
    .locals 6

    .prologue
    .line 352
    move-object v0, p0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    .line 353
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 354
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public username()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl;->username:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
