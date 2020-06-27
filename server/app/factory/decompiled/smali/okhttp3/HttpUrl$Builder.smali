.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 958
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 950
    move-object v1, v0

    const-string v2, ""

    iput-object v2, v1, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 951
    move-object v1, v0

    const-string v2, ""

    iput-object v2, v1, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 953
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lokhttp3/HttpUrl$Builder;->port:I

    .line 954
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 959
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 960
    return-void
.end method

.method private addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
    .locals 12

    .prologue
    .line 1059
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v6, 0x0

    move v3, v6

    .line 1061
    :cond_0
    move-object v6, v1

    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "/\\"

    invoke-static {v6, v7, v8, v9}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v6

    move v4, v6

    .line 1062
    move v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 1063
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1064
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v3, v6

    .line 1065
    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 1066
    move-object v6, v0

    move-object v0, v6

    return-object v0

    .line 1062
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 11

    .prologue
    .line 1557
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    move v7, v1

    move v8, v2

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 1560
    move-object v6, v3

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1562
    move-object v6, v3

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v3

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v3

    const/4 v7, 0x1

    move-object v8, v3

    .line 1563
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v7, v8}, Lokhttp3/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v6

    .line 1564
    :goto_0
    move-object v4, v6

    .line 1565
    move-object v6, v4

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move-object v0, v6

    .line 1571
    :goto_1
    return-object v0

    .line 1563
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    .line 1564
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v7, v8}, Lokhttp3/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_0

    .line 1566
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    move-object v5, v6

    .line 1567
    move-object v6, v5

    array-length v6, v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    move-object v6, v5

    invoke-static {v6}, Lokhttp3/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    .line 1568
    :cond_2
    new-instance v6, Ljava/lang/AssertionError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1571
    :cond_3
    move-object v6, v3

    invoke-static {v6}, Lokhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 13

    .prologue
    .line 1648
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v10, v4

    move v5, v10

    .line 1650
    move v10, v1

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_8

    .line 1651
    move v10, v5

    move-object v11, v3

    array-length v11, v11

    if-ne v10, v11, :cond_0

    const/4 v10, 0x0

    move v0, v10

    .line 1677
    :goto_1
    return v0

    .line 1654
    :cond_0
    move v10, v5

    move v11, v4

    if-eq v10, v11, :cond_2

    .line 1655
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_1

    const/4 v10, 0x0

    move v0, v10

    goto :goto_1

    .line 1656
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 1660
    :cond_2
    const/4 v10, 0x0

    move v7, v10

    .line 1661
    move v10, v6

    move v8, v10

    .line 1662
    :goto_2
    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 1663
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v9, v10

    .line 1664
    move v10, v9

    const/16 v11, 0x30

    if-lt v10, v11, :cond_3

    move v10, v9

    const/16 v11, 0x39

    if-le v10, v11, :cond_4

    .line 1669
    :cond_3
    move v10, v6

    move v11, v8

    sub-int/2addr v10, v11

    move v9, v10

    .line 1670
    move v10, v9

    if-nez v10, :cond_7

    const/4 v10, 0x0

    move v0, v10

    goto :goto_1

    .line 1665
    :cond_4
    move v10, v7

    if-nez v10, :cond_5

    move v10, v8

    move v11, v6

    if-eq v10, v11, :cond_5

    const/4 v10, 0x0

    move v0, v10

    goto :goto_1

    .line 1666
    :cond_5
    move v10, v7

    const/16 v11, 0xa

    mul-int/lit8 v10, v10, 0xa

    move v11, v9

    add-int/2addr v10, v11

    const/16 v11, 0x30

    add-int/lit8 v10, v10, -0x30

    move v7, v10

    .line 1667
    move v10, v7

    const/16 v11, 0xff

    if-le v10, v11, :cond_6

    const/4 v10, 0x0

    move v0, v10

    goto :goto_1

    .line 1662
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1673
    :cond_7
    move-object v10, v3

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move v12, v7

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1674
    goto :goto_0

    .line 1676
    :cond_8
    move v10, v5

    move v11, v4

    const/4 v12, 0x4

    add-int/lit8 v11, v11, 0x4

    if-eq v10, v11, :cond_9

    const/4 v10, 0x0

    move v0, v10

    goto :goto_1

    .line 1677
    :cond_9
    const/4 v10, 0x1

    move v0, v10

    goto :goto_1
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 18

    .prologue
    .line 1576
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/16 v11, 0x10

    new-array v11, v11, [B

    move-object v3, v11

    .line 1577
    const/4 v11, 0x0

    move v4, v11

    .line 1578
    const/4 v11, -0x1

    move v5, v11

    .line 1579
    const/4 v11, -0x1

    move v6, v11

    .line 1581
    move v11, v1

    move v7, v11

    :goto_0
    move v11, v7

    move v12, v2

    if-ge v11, v12, :cond_2

    .line 1582
    move v11, v4

    move-object v12, v3

    array-length v12, v12

    if-ne v11, v12, :cond_0

    const/4 v11, 0x0

    move-object v0, v11

    .line 1639
    :goto_1
    return-object v0

    .line 1585
    :cond_0
    move v11, v7

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    move v12, v2

    if-gt v11, v12, :cond_3

    move-object v11, v0

    move v12, v7

    const-string v13, "::"

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v11, v12, v13, v14, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1587
    move v11, v5

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_1

    .line 1588
    :cond_1
    add-int/lit8 v7, v7, 0x2

    .line 1589
    add-int/lit8 v4, v4, 0x2

    .line 1590
    move v11, v4

    move v5, v11

    .line 1591
    move v11, v7

    move v12, v2

    if-ne v11, v12, :cond_4

    .line 1632
    :cond_2
    :goto_2
    move v11, v4

    move-object v12, v3

    array-length v12, v12

    if-eq v11, v12, :cond_d

    .line 1633
    move v11, v5

    const/4 v12, -0x1

    if-ne v11, v12, :cond_c

    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_1

    .line 1592
    :cond_3
    move v11, v4

    if-eqz v11, :cond_4

    .line 1594
    move-object v11, v0

    move v12, v7

    const-string v13, ":"

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v13, v14, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1595
    add-int/lit8 v7, v7, 0x1

    .line 1607
    :cond_4
    const/4 v11, 0x0

    move v8, v11

    .line 1608
    move v11, v7

    move v6, v11

    .line 1609
    :goto_3
    move v11, v7

    move v12, v2

    if-ge v11, v12, :cond_5

    .line 1610
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v9, v11

    .line 1611
    move v11, v9

    invoke-static {v11}, Lokhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v11

    move v10, v11

    .line 1612
    move v11, v10

    const/4 v12, -0x1

    if-ne v11, v12, :cond_a

    .line 1615
    :cond_5
    move v11, v7

    move v12, v6

    sub-int/2addr v11, v12

    move v9, v11

    .line 1616
    move v11, v9

    if-eqz v11, :cond_6

    move v11, v9

    const/4 v12, 0x4

    if-le v11, v12, :cond_b

    :cond_6
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_1

    .line 1596
    :cond_7
    move-object v11, v0

    move v12, v7

    const-string v13, "."

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v13, v14, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1598
    move-object v11, v0

    move v12, v6

    move v13, v2

    move-object v14, v3

    move v15, v4

    const/16 v16, 0x2

    add-int/lit8 v15, v15, -0x2

    invoke-static {v11, v12, v13, v14, v15}, Lokhttp3/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_1

    .line 1599
    :cond_8
    add-int/lit8 v4, v4, 0x2

    .line 1600
    goto :goto_2

    .line 1602
    :cond_9
    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_1

    .line 1613
    :cond_a
    move v11, v8

    const/4 v12, 0x4

    shl-int/lit8 v11, v11, 0x4

    move v12, v10

    add-int/2addr v11, v12

    move v8, v11

    .line 1609
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1619
    :cond_b
    move-object v11, v3

    move v12, v4

    add-int/lit8 v4, v4, 0x1

    move v13, v8

    const/16 v14, 0x8

    ushr-int/lit8 v13, v13, 0x8

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 1620
    move-object v11, v3

    move v12, v4

    add-int/lit8 v4, v4, 0x1

    move v13, v8

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 1621
    goto/16 :goto_0

    .line 1634
    :cond_c
    move-object v11, v3

    move v12, v5

    move-object v13, v3

    move-object v14, v3

    array-length v14, v14

    move v15, v4

    move/from16 v16, v5

    sub-int v15, v15, v16

    sub-int/2addr v14, v15

    move v15, v4

    move/from16 v16, v5

    sub-int v15, v15, v16

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1635
    move-object v11, v3

    move v12, v5

    move v13, v5

    move-object v14, v3

    array-length v14, v14

    move v15, v4

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1639
    :cond_d
    move-object v11, v3

    :try_start_0
    invoke-static {v11}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_1

    .line 1640
    :catch_0
    move-exception v11

    move-object v7, v11

    .line 1641
    new-instance v11, Ljava/lang/AssertionError;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v11
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .locals 11

    .prologue
    .line 1682
    move-object v0, p0

    const/4 v6, -0x1

    move v1, v6

    .line 1683
    const/4 v6, 0x0

    move v2, v6

    .line 1684
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move-object v7, v0

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 1685
    move v6, v3

    move v4, v6

    .line 1686
    :goto_1
    move v6, v3

    const/16 v7, 0x10

    if-ge v6, v7, :cond_0

    move-object v6, v0

    move v7, v3

    aget-byte v6, v6, v7

    if-nez v6, :cond_0

    move-object v6, v0

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    if-nez v6, :cond_0

    .line 1687
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1689
    :cond_0
    move v6, v3

    move v7, v4

    sub-int/2addr v6, v7

    move v5, v6

    .line 1690
    move v6, v5

    move v7, v2

    if-le v6, v7, :cond_1

    .line 1691
    move v6, v4

    move v1, v6

    .line 1692
    move v6, v5

    move v2, v6

    .line 1684
    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1697
    :cond_2
    new-instance v6, Lokio/Buffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    move-object v3, v6

    .line 1698
    const/4 v6, 0x0

    move v4, v6

    :cond_3
    :goto_2
    move v6, v4

    move-object v7, v0

    array-length v7, v7

    if-ge v6, v7, :cond_6

    .line 1699
    move v6, v4

    move v7, v1

    if-ne v6, v7, :cond_4

    .line 1700
    move-object v6, v3

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v6

    .line 1701
    move v6, v4

    move v7, v2

    add-int/2addr v6, v7

    move v4, v6

    .line 1702
    move v6, v4

    const/16 v7, 0x10

    if-ne v6, v7, :cond_3

    move-object v6, v3

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v6

    goto :goto_2

    .line 1704
    :cond_4
    move v6, v4

    if-lez v6, :cond_5

    move-object v6, v3

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v6

    .line 1705
    :cond_5
    move-object v6, v0

    move v7, v4

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    move-object v7, v0

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    move v5, v6

    .line 1706
    move-object v6, v3

    move v7, v5

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v6

    .line 1707
    add-int/lit8 v4, v4, 0x2

    .line 1708
    goto :goto_2

    .line 1710
    :cond_6
    move-object v6, v3

    invoke-virtual {v6}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method private isDot(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1462
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string v3, "%2e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1466
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string v3, "%2e."

    .line 1467
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string v3, ".%2e"

    .line 1468
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string v3, "%2e%2e"

    .line 1469
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1466
    :goto_0
    move v0, v2

    return v0

    .line 1469
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 13

    .prologue
    .line 1716
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v1

    move v7, v2

    :try_start_0
    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v5 .. v12}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 1717
    move-object v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v4, v5

    .line 1718
    move v5, v4

    if-lez v5, :cond_0

    move v5, v4

    const v6, 0xffff

    if-gt v5, v6, :cond_0

    move v5, v4

    move v0, v5

    .line 1721
    :goto_0
    return v0

    .line 1719
    :cond_0
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 1720
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1721
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0
.end method

.method private pop()V
    .locals 5

    .prologue
    .line 1483
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 1486
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1487
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1491
    :goto_0
    return-void

    .line 1489
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 6

    .prologue
    .line 1540
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_2

    .line 1541
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1540
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1543
    :cond_1
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 1544
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 1548
    :sswitch_1
    move v4, v3

    move v0, v4

    .line 1551
    :goto_2
    return v0

    :cond_2
    move v4, v2

    move v0, v4

    goto :goto_2

    .line 1541
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .locals 15

    .prologue
    .line 1442
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v1

    move v8, v2

    move v9, v3

    const-string v10, " \"<>^`{}|/\\?#"

    move v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static/range {v7 .. v14}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1444
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1459
    :goto_0
    return-void

    .line 1447
    :cond_0
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1448
    move-object v7, v0

    invoke-direct {v7}, Lokhttp3/HttpUrl$Builder;->pop()V

    .line 1449
    goto :goto_0

    .line 1451
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1452
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object v9, v6

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1456
    :goto_1
    move v7, v4

    if-eqz v7, :cond_2

    .line 1457
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v8, ""

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1459
    :cond_2
    goto :goto_0

    .line 1454
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1180
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    add-int/lit8 v3, v3, -0x2

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_1

    .line 1181
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1182
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 1183
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 1184
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1185
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1190
    :goto_1
    return-void

    .line 1180
    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 1190
    :cond_1
    goto :goto_1
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .locals 14

    .prologue
    .line 1414
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v8, v2

    move v9, v3

    if-ne v8, v9, :cond_0

    .line 1437
    :goto_0
    return-void

    .line 1418
    :cond_0
    move-object v8, v1

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    .line 1419
    move v8, v4

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_1

    move v8, v4

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_3

    .line 1421
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 1422
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v9, ""

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1423
    add-int/lit8 v2, v2, 0x1

    .line 1430
    :goto_1
    move v8, v2

    move v5, v8

    :goto_2
    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_5

    .line 1431
    move-object v8, v1

    move v9, v5

    move v10, v3

    const-string v11, "/\\"

    invoke-static {v8, v9, v10, v11}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v8

    move v6, v8

    .line 1432
    move v8, v6

    move v9, v3

    if-ge v8, v9, :cond_4

    const/4 v8, 0x1

    :goto_3
    move v7, v8

    .line 1433
    move-object v8, v0

    move-object v9, v1

    move v10, v5

    move v11, v6

    move v12, v7

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1434
    move v8, v6

    move v5, v8

    .line 1435
    move v8, v7

    if-eqz v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 1436
    :cond_2
    goto :goto_2

    .line 1426
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 1432
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 1437
    :cond_5
    goto :goto_0
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 8

    .prologue
    .line 1498
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, v2

    move v7, v1

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    const/4 v6, -0x1

    move v0, v6

    .line 1520
    :goto_0
    return v0

    .line 1500
    :cond_0
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v3, v6

    .line 1501
    move v6, v3

    const/16 v7, 0x61

    if-lt v6, v7, :cond_1

    move v6, v3

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3

    :cond_1
    move v6, v3

    const/16 v7, 0x41

    if-lt v6, v7, :cond_2

    move v6, v3

    const/16 v7, 0x5a

    if-le v6, v7, :cond_3

    :cond_2
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0

    .line 1503
    :cond_3
    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_a

    .line 1504
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 1506
    move v6, v5

    const/16 v7, 0x61

    if-lt v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x7a

    if-le v6, v7, :cond_7

    :cond_4
    move v6, v5

    const/16 v7, 0x41

    if-lt v6, v7, :cond_5

    move v6, v5

    const/16 v7, 0x5a

    if-le v6, v7, :cond_7

    :cond_5
    move v6, v5

    const/16 v7, 0x30

    if-lt v6, v7, :cond_6

    move v6, v5

    const/16 v7, 0x39

    if-le v6, v7, :cond_7

    :cond_6
    move v6, v5

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_7

    move v6, v5

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_7

    move v6, v5

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_8

    .line 1503
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1513
    :cond_8
    move v6, v5

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_9

    .line 1514
    move v6, v4

    move v0, v6

    goto :goto_0

    .line 1516
    :cond_9
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0

    .line 1520
    :cond_a
    const/4 v6, -0x1

    move v0, v6

    goto :goto_0
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 7

    .prologue
    .line 1525
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v5, 0x0

    move v3, v5

    .line 1526
    :goto_0
    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 1527
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    .line 1528
    move v5, v4

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_0

    move v5, v4

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_1

    .line 1529
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 1530
    add-int/lit8 v1, v1, 0x1

    .line 1534
    goto :goto_0

    .line 1535
    :cond_1
    move v5, v3

    move v0, v5

    return v0
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9

    .prologue
    .line 1039
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 1040
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "encodedPathSegment == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1042
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1043
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public addEncodedPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    .line 1052
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 1053
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "encodedPathSegments == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1055
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 11

    .prologue
    .line 1140
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string v5, "encodedName == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1141
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v3, :cond_1

    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1142
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    move-object v4, v1

    const-string v5, " \"\'<>#&="

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1143
    invoke-static/range {v4 .. v9}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    .line 1142
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1144
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    const-string v5, " \"\'<>#&="

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1145
    invoke-static/range {v4 .. v9}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    .line 1144
    :goto_0
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1147
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 1145
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9

    .prologue
    .line 1024
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "pathSegment == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1025
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1026
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    .line 1034
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "pathSegments == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1035
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 11

    .prologue
    .line 1128
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string v5, "name == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1129
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v3, :cond_1

    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1130
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    move-object v4, v1

    const-string v5, " \"\'<>#&="

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1131
    invoke-static/range {v4 .. v9}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    .line 1130
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1132
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    const-string v5, " \"\'<>#&="

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1133
    invoke-static/range {v4 .. v9}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    .line 1132
    :goto_0
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1135
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 1133
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public build()Lokhttp3/HttpUrl;
    .locals 5

    .prologue
    .line 1233
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "scheme == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1234
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "host == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1235
    :cond_1
    new-instance v1, Lokhttp3/HttpUrl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lokhttp3/HttpUrl;-><init>(Lokhttp3/HttpUrl$Builder;)V

    move-object v0, v1

    return-object v0
.end method

.method effectivePort()I
    .locals 3

    .prologue
    .line 1020
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lokhttp3/HttpUrl$Builder;->port:I

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9

    .prologue
    .line 1200
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1201
    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1203
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 1201
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public encodedPassword(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 10

    .prologue
    .line 995
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "encodedPassword == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 996
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 998
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7

    .prologue
    .line 1102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "encodedPath == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1103
    :cond_0
    move-object v2, v1

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1104
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected encodedPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1106
    :cond_1
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1107
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9

    .prologue
    .line 1119
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 1121
    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1120
    invoke-static {v3}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1123
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 1120
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public encodedUsername(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 10

    .prologue
    .line 982
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "encodedUsername == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 983
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 985
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public fragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9

    .prologue
    .line 1193
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1194
    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1196
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 1194
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 8

    .prologue
    .line 1006
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "host == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1007
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1008
    move-object v3, v2

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1009
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1010
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;
    .locals 24

    .prologue
    .line 1291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v13, v2

    const/4 v14, 0x0

    move-object v15, v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v13, v14, v15}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v13

    move v3, v13

    .line 1292
    move-object v13, v2

    move v14, v3

    move-object v15, v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v13, v14, v15}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v13

    move v4, v13

    .line 1295
    move-object v13, v2

    move v14, v3

    move v15, v4

    invoke-static {v13, v14, v15}, Lokhttp3/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v13

    move v5, v13

    .line 1296
    move v13, v5

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 1297
    move-object v13, v2

    const/4 v14, 0x1

    move v15, v3

    const-string v16, "https:"

    const/16 v17, 0x0

    const/16 v18, 0x6

    invoke-virtual/range {v13 .. v18}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1298
    move-object v13, v0

    const-string v14, "https"

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1299
    move v13, v3

    const-string v14, "https:"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    move v3, v13

    .line 1313
    :goto_0
    const/4 v13, 0x0

    move v6, v13

    .line 1314
    const/4 v13, 0x0

    move v7, v13

    .line 1315
    move-object v13, v2

    move v14, v3

    move v15, v4

    invoke-static {v13, v14, v15}, Lokhttp3/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v13

    move v8, v13

    .line 1316
    move v13, v8

    const/4 v14, 0x2

    if-ge v13, v14, :cond_0

    move-object v13, v1

    if-eqz v13, :cond_0

    move-object v13, v1

    iget-object v13, v13, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    move-object v14, v0

    iget-object v14, v14, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 1326
    :cond_0
    move v13, v3

    move v14, v8

    add-int/2addr v13, v14

    move v3, v13

    .line 1329
    :goto_1
    move-object v13, v2

    move v14, v3

    move v15, v4

    const-string v16, "@/\\?#"

    invoke-static/range {v13 .. v16}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v13

    move v9, v13

    .line 1330
    move v13, v9

    move v14, v4

    if-eq v13, v14, :cond_5

    move-object v13, v2

    move v14, v9

    .line 1331
    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_2
    move v10, v13

    .line 1333
    move v13, v10

    sparse-switch v13, :sswitch_data_0

    .line 1376
    :goto_3
    goto :goto_1

    .line 1300
    :cond_1
    move-object v13, v2

    const/4 v14, 0x1

    move v15, v3

    const-string v16, "http:"

    const/16 v17, 0x0

    const/16 v18, 0x5

    invoke-virtual/range {v13 .. v18}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1301
    move-object v13, v0

    const-string v14, "http"

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1302
    move v13, v3

    const-string v14, "http:"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    move v3, v13

    goto :goto_0

    .line 1304
    :cond_2
    sget-object v13, Lokhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v0, v13

    .line 1409
    :goto_4
    return-object v0

    .line 1306
    :cond_3
    move-object v13, v1

    if-eqz v13, :cond_4

    .line 1307
    move-object v13, v0

    move-object v14, v1

    iget-object v14, v14, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 1309
    :cond_4
    sget-object v13, Lokhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v0, v13

    goto :goto_4

    .line 1331
    :cond_5
    const/4 v13, -0x1

    goto :goto_2

    .line 1336
    :sswitch_0
    move v13, v7

    if-nez v13, :cond_8

    .line 1337
    move-object v13, v2

    move v14, v3

    move v15, v9

    const/16 v16, 0x3a

    invoke-static/range {v13 .. v16}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v13

    move v11, v13

    .line 1339
    move-object v13, v2

    move v14, v3

    move v15, v11

    const-string v16, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v13 .. v20}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 1341
    move-object v13, v0

    move v14, v6

    if-eqz v14, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    iget-object v15, v15, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%40"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_5
    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1344
    move v13, v11

    move v14, v9

    if-eq v13, v14, :cond_6

    .line 1345
    const/4 v13, 0x1

    move v7, v13

    .line 1346
    move-object v13, v0

    move-object v14, v2

    move v15, v11

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v9

    const-string v17, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v14 .. v21}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1349
    :cond_6
    const/4 v13, 0x1

    move v6, v13

    .line 1354
    :goto_6
    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v3, v13

    .line 1355
    goto/16 :goto_3

    .line 1341
    :cond_7
    move-object v14, v12

    goto :goto_5

    .line 1351
    :cond_8
    move-object v13, v0

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    iget-object v15, v15, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%40"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v9

    const-string v18, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v15 .. v22}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_6

    .line 1363
    :sswitch_1
    move-object v13, v2

    move v14, v3

    move v15, v9

    invoke-static {v13, v14, v15}, Lokhttp3/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v13

    move v11, v13

    .line 1364
    move v13, v11

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v9

    if-ge v13, v14, :cond_9

    .line 1365
    move-object v13, v0

    move-object v14, v2

    move v15, v3

    move/from16 v16, v11

    invoke-static/range {v14 .. v16}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1366
    move-object v13, v0

    move-object v14, v2

    move v15, v11

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v9

    invoke-static/range {v14 .. v16}, Lokhttp3/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v14

    iput v14, v13, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1367
    move-object v13, v0

    iget v13, v13, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_a

    sget-object v13, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v0, v13

    goto/16 :goto_4

    .line 1369
    :cond_9
    move-object v13, v0

    move-object v14, v2

    move v15, v3

    move/from16 v16, v11

    invoke-static/range {v14 .. v16}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1370
    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v14}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1372
    :cond_a
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v13, :cond_b

    sget-object v13, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v0, v13

    goto/16 :goto_4

    .line 1373
    :cond_b
    move v13, v9

    move v3, v13

    .line 1391
    :cond_c
    :goto_7
    move-object v13, v2

    move v14, v3

    move v15, v4

    const-string v16, "?#"

    invoke-static/range {v13 .. v16}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v13

    move v9, v13

    .line 1392
    move-object v13, v0

    move-object v14, v2

    move v15, v3

    move/from16 v16, v9

    invoke-direct/range {v13 .. v16}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1393
    move v13, v9

    move v3, v13

    .line 1396
    move v13, v3

    move v14, v4

    if-ge v13, v14, :cond_d

    move-object v13, v2

    move v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3f

    if-ne v13, v14, :cond_d

    .line 1397
    move-object v13, v2

    move v14, v3

    move v15, v4

    const/16 v16, 0x23

    invoke-static/range {v13 .. v16}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v13

    move v10, v13

    .line 1398
    move-object v13, v0

    move-object v14, v2

    move v15, v3

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v10

    const-string v17, " \"\'<>#"

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-static/range {v14 .. v21}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1400
    move v13, v10

    move v3, v13

    .line 1404
    :cond_d
    move v13, v3

    move v14, v4

    if-ge v13, v14, :cond_e

    move-object v13, v2

    move v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x23

    if-ne v13, v14, :cond_e

    .line 1405
    move-object v13, v0

    move-object v14, v2

    move v15, v3

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v4

    const-string v17, ""

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v14 .. v21}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1409
    :cond_e
    sget-object v13, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    move-object v0, v13

    goto/16 :goto_4

    .line 1379
    :cond_f
    move-object v13, v0

    move-object v14, v1

    invoke-virtual {v14}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1380
    move-object v13, v0

    move-object v14, v1

    invoke-virtual {v14}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1381
    move-object v13, v0

    move-object v14, v1

    iget-object v14, v14, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iput-object v14, v13, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1382
    move-object v13, v0

    move-object v14, v1

    iget v14, v14, Lokhttp3/HttpUrl;->port:I

    iput v14, v13, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1383
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 1384
    move-object v13, v0

    iget-object v13, v13, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move-object v14, v1

    invoke-virtual {v14}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v13

    .line 1385
    move v13, v3

    move v14, v4

    if-eq v13, v14, :cond_10

    move-object v13, v2

    move v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x23

    if-ne v13, v14, :cond_c

    .line 1386
    :cond_10
    move-object v13, v0

    move-object v14, v1

    invoke-virtual {v14}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v13

    goto/16 :goto_7

    .line 1333
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x23 -> :sswitch_1
        0x2f -> :sswitch_1
        0x3f -> :sswitch_1
        0x40 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 10

    .prologue
    .line 989
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "password == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 990
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 991
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public port(I)Lokhttp3/HttpUrl$Builder;
    .locals 7

    .prologue
    .line 1014
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-lez v2, :cond_0

    move v2, v1

    const v3, 0xffff

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1015
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1016
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9

    .prologue
    .line 1111
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string v4, " \"\'<>#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 1112
    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1115
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 1112
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method reencodeForUri()Lokhttp3/HttpUrl$Builder;
    .locals 12

    .prologue
    .line 1211
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v2, v4

    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 1212
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 1213
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move v5, v1

    move-object v6, v3

    const-string v7, "[]"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1214
    invoke-static/range {v6 .. v11}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v6

    .line 1213
    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1216
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 1217
    const/4 v4, 0x0

    move v1, v4

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v2, v4

    :goto_1
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_2

    .line 1218
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 1219
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 1220
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    move v5, v1

    move-object v6, v3

    const-string v7, "\\^`{|}"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 1221
    invoke-static/range {v6 .. v11}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v6

    .line 1220
    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1217
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1225
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1226
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    const-string v6, " \"#<>\\^`{|}"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1229
    :cond_3
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 10

    .prologue
    .line 1172
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "encodedName == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1173
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v2, :cond_1

    move-object v2, v0

    move-object v0, v2

    .line 1176
    :goto_0
    return-object v0

    .line 1174
    :cond_1
    move-object v2, v0

    move-object v3, v1

    const-string v4, " \"\'<>#&="

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 1175
    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1174
    invoke-direct {v2, v3}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1176
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 10

    .prologue
    .line 1163
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "name == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1164
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v3, :cond_1

    move-object v3, v0

    move-object v0, v3

    .line 1168
    :goto_0
    return-object v0

    .line 1165
    :cond_1
    move-object v3, v1

    const-string v4, " \"\'<>#&="

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1167
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1168
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public removePathSegment(I)Lokhttp3/HttpUrl$Builder;
    .locals 4

    .prologue
    .line 1094
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 1095
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1096
    move-object v2, v0

    iget-object v2, v2, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1098
    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7

    .prologue
    .line 963
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 964
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "scheme == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 965
    :cond_0
    move-object v2, v1

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 966
    move-object v2, v0

    const-string v3, "http"

    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 972
    :goto_0
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 967
    :cond_1
    move-object v2, v1

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 968
    move-object v2, v0

    const-string v3, "https"

    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 970
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 13

    .prologue
    .line 1081
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v2

    if-nez v4, :cond_0

    .line 1082
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "encodedPathSegment == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1084
    :cond_0
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v2

    .line 1085
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, " \"<>^`{}|/\\?#"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1084
    invoke-static/range {v4 .. v11}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1086
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1087
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1088
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected path segment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1090
    :cond_2
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    .line 1157
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    .line 1158
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    .line 1159
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 13

    .prologue
    .line 1070
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v2

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "pathSegment == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1071
    :cond_0
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v2

    .line 1072
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, " \"<>^`{}|/\\?#"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1071
    invoke-static/range {v4 .. v11}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1073
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1074
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected path segment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1076
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    move v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1077
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    .line 1151
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    .line 1152
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    .line 1153
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1239
    move-object v0, p0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 1240
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1241
    move-object v3, v1

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1243
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1244
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1245
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1246
    move-object v3, v1

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1247
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1249
    :cond_1
    move-object v3, v1

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1252
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 1254
    move-object v3, v1

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1255
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1256
    move-object v3, v1

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1261
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v3

    move v2, v3

    .line 1262
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v4}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1263
    move-object v3, v1

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1264
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1267
    :cond_3
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v3, v4}, Lokhttp3/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1269
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 1270
    move-object v3, v1

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1271
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v3, v4}, Lokhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1274
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1275
    move-object v3, v1

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1276
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1279
    :cond_5
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 1258
    :cond_6
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0
.end method

.method public username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 10

    .prologue
    .line 976
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "username == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 977
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 978
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
