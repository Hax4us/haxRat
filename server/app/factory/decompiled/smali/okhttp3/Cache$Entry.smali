.class final Lokhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lokhttp3/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lokhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lokhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 5

    .prologue
    .line 593
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 594
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 595
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 596
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 597
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 598
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v3

    iput v3, v2, Lokhttp3/Cache$Entry;->code:I

    .line 599
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 600
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 601
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 602
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 603
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 604
    return-void
.end method

.method public constructor <init>(Lokio/Source;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 541
    move-object/from16 v20, v4

    :try_start_0
    invoke-static/range {v20 .. v20}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v20

    move-object/from16 v5, v20

    .line 542
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    invoke-interface/range {v21 .. v21}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 543
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    invoke-interface/range {v21 .. v21}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 544
    new-instance v20, Lokhttp3/Headers$Builder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Lokhttp3/Headers$Builder;-><init>()V

    move-object/from16 v6, v20

    .line 545
    move-object/from16 v20, v5

    invoke-static/range {v20 .. v20}, Lokhttp3/Cache;->readInt(Lokio/BufferedSource;)I

    move-result v20

    move/from16 v7, v20

    .line 546
    const/16 v20, 0x0

    move/from16 v8, v20

    :goto_0
    move/from16 v20, v8

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 547
    move-object/from16 v20, v6

    move-object/from16 v21, v5

    invoke-interface/range {v21 .. v21}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v20

    .line 546
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 549
    :cond_0
    move-object/from16 v20, v3

    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 551
    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v20

    move-object/from16 v8, v20

    .line 552
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 553
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget v0, v0, Lokhttp3/internal/http/StatusLine;->code:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lokhttp3/Cache$Entry;->code:I

    .line 554
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 555
    new-instance v20, Lokhttp3/Headers$Builder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Lokhttp3/Headers$Builder;-><init>()V

    move-object/from16 v9, v20

    .line 556
    move-object/from16 v20, v5

    invoke-static/range {v20 .. v20}, Lokhttp3/Cache;->readInt(Lokio/BufferedSource;)I

    move-result v20

    move/from16 v10, v20

    .line 557
    const/16 v20, 0x0

    move/from16 v11, v20

    :goto_1
    move/from16 v20, v11

    move/from16 v21, v10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 558
    move-object/from16 v20, v9

    move-object/from16 v21, v5

    invoke-interface/range {v21 .. v21}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lokhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v20

    .line 557
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 560
    :cond_1
    move-object/from16 v20, v9

    sget-object v21, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v11, v20

    .line 561
    move-object/from16 v20, v9

    sget-object v21, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    .line 562
    move-object/from16 v20, v9

    sget-object v21, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v20

    .line 563
    move-object/from16 v20, v9

    sget-object v21, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v20

    .line 564
    move-object/from16 v20, v3

    move-object/from16 v21, v11

    if-eqz v21, :cond_2

    move-object/from16 v21, v11

    .line 565
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    :goto_2
    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 567
    move-object/from16 v20, v3

    move-object/from16 v21, v12

    if-eqz v21, :cond_3

    move-object/from16 v21, v12

    .line 568
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    :goto_3
    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 570
    move-object/from16 v20, v3

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 572
    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v20}, Lokhttp3/Cache$Entry;->isHttps()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 573
    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, v20

    .line 574
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_4

    .line 575
    new-instance v20, Ljava/io/IOException;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "expected \"\" but was \""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :catchall_0
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lokio/Source;->close()V

    move-object/from16 v20, v19

    throw v20

    .line 565
    :cond_2
    const-wide/16 v21, 0x0

    goto :goto_2

    .line 568
    :cond_3
    const-wide/16 v21, 0x0

    goto :goto_3

    .line 577
    :cond_4
    move-object/from16 v20, v5

    :try_start_1
    invoke-interface/range {v20 .. v20}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    .line 578
    move-object/from16 v20, v14

    invoke-static/range {v20 .. v20}, Lokhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v20

    move-object/from16 v15, v20

    .line 579
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    invoke-direct/range {v20 .. v21}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v16, v20

    .line 580
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    invoke-direct/range {v20 .. v21}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/BufferedSource;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v17, v20

    .line 581
    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Lokio/BufferedSource;->exhausted()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v20, v5

    .line 582
    invoke-interface/range {v20 .. v20}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v20

    :goto_4
    move-object/from16 v18, v20

    .line 584
    move-object/from16 v20, v3

    move-object/from16 v21, v18

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    move-object/from16 v24, v17

    invoke-static/range {v21 .. v24}, Lokhttp3/Handshake;->get(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :goto_5
    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lokio/Source;->close()V

    .line 591
    return-void

    .line 582
    :cond_5
    const/16 v20, 0x0

    goto :goto_4

    .line 586
    :cond_6
    move-object/from16 v20, v3

    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method private isHttps()Z
    .locals 3

    .prologue
    .line 657
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private readCertificateList(Lokio/BufferedSource;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    invoke-static {v8}, Lokhttp3/Cache;->readInt(Lokio/BufferedSource;)I

    move-result v8

    move v2, v8

    .line 662
    move v8, v2

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object v0, v8

    .line 673
    :goto_0
    return-object v0

    .line 665
    :cond_0
    :try_start_0
    const-string v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    move-object v3, v8

    .line 666
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move v10, v2

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v8

    .line 667
    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v2

    if-ge v8, v9, :cond_1

    .line 668
    move-object v8, v1

    invoke-interface {v8}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 669
    new-instance v8, Lokio/Buffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    move-object v7, v8

    .line 670
    move-object v8, v7

    move-object v9, v6

    invoke-static {v9}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v8

    .line 671
    move-object v8, v4

    move-object v9, v3

    move-object v10, v7

    invoke-virtual {v10}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 667
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 673
    :cond_1
    move-object v8, v4

    move-object v0, v8

    goto :goto_0

    .line 674
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 675
    new-instance v8, Ljava/io/IOException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v3

    invoke-virtual {v10}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private writeCertList(Lokio/BufferedSink;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSink;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    move-object v8, v2

    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v7

    const/16 v8, 0xa

    .line 683
    invoke-interface {v7, v8}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v7

    .line 684
    const/4 v7, 0x0

    move v3, v7

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    :goto_0
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 685
    move-object v7, v2

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    move-object v5, v7

    .line 686
    move-object v7, v5

    invoke-static {v7}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 687
    move-object v7, v1

    move-object v8, v6

    invoke-interface {v7, v8}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v7

    const/16 v8, 0xa

    .line 688
    invoke-interface {v7, v8}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 684
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 693
    :cond_0
    return-void

    .line 690
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 691
    new-instance v7, Ljava/io/IOException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    invoke-virtual {v9}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public matches(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 6

    .prologue
    .line 696
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    move-object v4, v1

    .line 697
    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    move-object v5, v1

    .line 698
    invoke-static {v3, v4, v5}, Lokhttp3/internal/http/HttpHeaders;->varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 696
    :goto_0
    move v0, v3

    return v0

    .line 698
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;
    .locals 12

    .prologue
    .line 702
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    const-string v6, "Content-Type"

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 703
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    const-string v6, "Content-Length"

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 704
    new-instance v5, Lokhttp3/Request$Builder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 705
    invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v7, 0x0

    .line 706
    invoke-virtual {v5, v6, v7}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 707
    invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 708
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    move-object v4, v5

    .line 709
    new-instance v5, Lokhttp3/Response$Builder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lokhttp3/Response$Builder;-><init>()V

    move-object v6, v4

    .line 710
    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 711
    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lokhttp3/Cache$Entry;->code:I

    .line 712
    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 713
    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 714
    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v5

    new-instance v6, Lokhttp3/Cache$CacheResponseBody;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lokhttp3/Cache$CacheResponseBody;-><init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 716
    invoke-virtual {v5, v6}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v5

    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 717
    invoke-virtual {v5, v6, v7}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v5

    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 718
    invoke-virtual {v5, v6, v7}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v5

    .line 719
    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v5

    .line 709
    move-object v0, v5

    return-object v0
.end method

.method public writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5

    move-object v2, v5

    .line 609
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    .line 610
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 611
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    .line 612
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 613
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    .line 614
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 615
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    move-result v5

    move v4, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    .line 616
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    move v7, v3

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const-string v6, ": "

    .line 617
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    move v7, v3

    .line 618
    invoke-virtual {v6, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    .line 619
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 615
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 622
    :cond_0
    move-object v5, v2

    new-instance v6, Lokhttp3/internal/http/StatusLine;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    move-object v9, v0

    iget v9, v9, Lokhttp3/Cache$Entry;->code:I

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lokhttp3/internal/http/StatusLine;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v6}, Lokhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    .line 623
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 624
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    move-result v6

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    .line 625
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 626
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    move-result v5

    move v4, v5

    :goto_1
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_1

    .line 627
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    move v7, v3

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const-string v6, ": "

    .line 628
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    move v7, v3

    .line 629
    invoke-virtual {v6, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    .line 630
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 626
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 632
    :cond_1
    move-object v5, v2

    sget-object v6, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const-string v6, ": "

    .line 633
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 634
    invoke-interface {v5, v6, v7}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    .line 635
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 636
    move-object v5, v2

    sget-object v6, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const-string v6, ": "

    .line 637
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    move-object v6, v0

    iget-wide v6, v6, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 638
    invoke-interface {v5, v6, v7}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    .line 639
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 641
    move-object v5, v0

    invoke-direct {v5}, Lokhttp3/Cache$Entry;->isHttps()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 642
    move-object v5, v2

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 643
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v6}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    .line 644
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 645
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v7}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V

    .line 646
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v7}, Lokhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/BufferedSink;Ljava/util/List;)V

    .line 648
    move-object v5, v0

    iget-object v5, v5, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v5}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 649
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v6}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    const/16 v6, 0xa

    .line 650
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    .line 653
    :cond_2
    move-object v5, v2

    invoke-interface {v5}, Lokio/BufferedSink;->close()V

    .line 654
    return-void
.end method
