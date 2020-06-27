.class public Lio/socket/engineio/client/transports/PollingXHR$Request;
.super Lio/socket/emitter/Emitter;
.source "PollingXHR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/engineio/client/transports/PollingXHR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/client/transports/PollingXHR$Request$Options;
    }
.end annotation


# static fields
.field public static final EVENT_DATA:Ljava/lang/String; = "data"

.field public static final EVENT_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_REQUEST_HEADERS:Ljava/lang/String; = "requestHeaders"

.field public static final EVENT_RESPONSE_HEADERS:Ljava/lang/String; = "responseHeaders"

.field public static final EVENT_SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private data:[B

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private method:Ljava/lang/String;

.field private proxy:Ljava/net/Proxy;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private uri:Ljava/lang/String;

.field private xhr:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lio/socket/engineio/client/transports/PollingXHR$Request$Options;)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lio/socket/emitter/Emitter;-><init>()V

    .line 152
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->method:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->method:Ljava/lang/String;

    :goto_0
    iput-object v3, v2, Lio/socket/engineio/client/transports/PollingXHR$Request;->method:Ljava/lang/String;

    .line 153
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->uri:Ljava/lang/String;

    iput-object v3, v2, Lio/socket/engineio/client/transports/PollingXHR$Request;->uri:Ljava/lang/String;

    .line 154
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->data:[B

    iput-object v3, v2, Lio/socket/engineio/client/transports/PollingXHR$Request;->data:[B

    .line 155
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->sslContext:Ljavax/net/ssl/SSLContext;

    iput-object v3, v2, Lio/socket/engineio/client/transports/PollingXHR$Request;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 156
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v3, v2, Lio/socket/engineio/client/transports/PollingXHR$Request;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 157
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lio/socket/engineio/client/transports/PollingXHR$Request$Options;->proxy:Ljava/net/Proxy;

    iput-object v3, v2, Lio/socket/engineio/client/transports/PollingXHR$Request;->proxy:Ljava/net/Proxy;

    .line 158
    return-void

    .line 152
    :cond_0
    const-string v3, "GET"

    goto :goto_0
.end method

.method static synthetic access$300(Lio/socket/engineio/client/transports/PollingXHR$Request;)[B
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/PollingXHR$Request;->data:[B

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Lio/socket/engineio/client/transports/PollingXHR$Request;)Ljava/net/HttpURLConnection;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Lio/socket/engineio/client/transports/PollingXHR$Request;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/transports/PollingXHR$Request;->onResponseHeaders(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lio/socket/engineio/client/transports/PollingXHR$Request;)V
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lio/socket/engineio/client/transports/PollingXHR$Request;->onLoad()V

    return-void
.end method

.method static synthetic access$700(Lio/socket/engineio/client/transports/PollingXHR$Request;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lio/socket/engineio/client/transports/PollingXHR$Request;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method private cleanup()V
    .locals 3

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 267
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    .line 268
    goto :goto_0
.end method

.method private onData(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "data"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/transports/PollingXHR$Request;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 241
    move-object v2, v0

    invoke-direct {v2}, Lio/socket/engineio/client/transports/PollingXHR$Request;->onSuccess()V

    .line 242
    return-void
.end method

.method private onData([B)V
    .locals 9

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "data"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/transports/PollingXHR$Request;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 246
    move-object v2, v0

    invoke-direct {v2}, Lio/socket/engineio/client/transports/PollingXHR$Request;->onSuccess()V

    .line 247
    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 9

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/transports/PollingXHR$Request;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 251
    return-void
.end method

.method private onLoad()V
    .locals 20

    .prologue
    .line 271
    move-object/from16 v1, p0

    const/4 v14, 0x0

    move-object v2, v14

    .line 272
    const/4 v14, 0x0

    move-object v3, v14

    .line 273
    move-object v14, v1

    iget-object v14, v14, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    .line 275
    :try_start_0
    const-string v14, "application/octet-stream"

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 276
    new-instance v14, Ljava/io/BufferedInputStream;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v14

    .line 277
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v14

    .line 278
    const/4 v14, 0x0

    move v6, v14

    .line 279
    const/4 v14, 0x0

    move v7, v14

    .line 280
    const/16 v14, 0x400

    new-array v14, v14, [B

    move-object v8, v14

    .line 281
    :goto_0
    move-object v14, v2

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/io/InputStream;->read([B)I

    move-result v14

    move/from16 v19, v14

    move/from16 v14, v19

    move/from16 v15, v19

    move v7, v15

    if-lez v14, :cond_0

    .line 282
    move v14, v7

    new-array v14, v14, [B

    move-object v9, v14

    .line 283
    move-object v14, v8

    const/4 v15, 0x0

    move-object/from16 v16, v9

    const/16 v17, 0x0

    move/from16 v18, v7

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    move-object v14, v5

    move-object v15, v9

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 285
    move v14, v6

    move v15, v7

    add-int/2addr v14, v15

    move v6, v14

    .line 286
    goto :goto_0

    .line 287
    :cond_0
    move v14, v6

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object v9, v14

    .line 288
    move-object v14, v5

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v10, v14

    :goto_1
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    move-object v11, v14

    .line 289
    move-object v14, v9

    move-object v15, v11

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 290
    goto :goto_1

    .line 291
    :cond_1
    move-object v14, v1

    move-object v15, v9

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    invoke-direct {v14, v15}, Lio/socket/engineio/client/transports/PollingXHR$Request;->onData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :goto_2
    move-object v14, v2

    if-eqz v14, :cond_2

    move-object v14, v2

    :try_start_1
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    :cond_2
    :goto_3
    move-object v14, v3

    if-eqz v14, :cond_3

    move-object v14, v3

    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 310
    :cond_3
    :goto_4
    move-object v14, v1

    invoke-direct {v14}, Lio/socket/engineio/client/transports/PollingXHR$Request;->cleanup()V

    .line 312
    :goto_5
    return-void

    .line 294
    :cond_4
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v14

    .line 295
    new-instance v14, Ljava/io/BufferedReader;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v15 .. v16}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v14

    .line 296
    :goto_6
    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object v5, v15

    if-eqz v14, :cond_5

    .line 297
    move-object v14, v6

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    goto :goto_6

    .line 299
    :cond_5
    move-object v14, v1

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lio/socket/engineio/client/transports/PollingXHR$Request;->onData(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 301
    :catch_0
    move-exception v14

    move-object v5, v14

    .line 302
    move-object v14, v1

    move-object v15, v5

    :try_start_4
    invoke-direct {v14, v15}, Lio/socket/engineio/client/transports/PollingXHR$Request;->onError(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 305
    move-object v14, v2

    if-eqz v14, :cond_6

    move-object v14, v2

    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 308
    :cond_6
    :goto_7
    move-object v14, v3

    if-eqz v14, :cond_7

    move-object v14, v3

    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 310
    :cond_7
    :goto_8
    move-object v14, v1

    invoke-direct {v14}, Lio/socket/engineio/client/transports/PollingXHR$Request;->cleanup()V

    .line 311
    goto :goto_5

    .line 306
    :catch_1
    move-exception v14

    move-object v5, v14

    goto :goto_3

    .line 309
    :catch_2
    move-exception v14

    move-object v5, v14

    goto :goto_4

    .line 306
    :catch_3
    move-exception v14

    move-object v5, v14

    goto :goto_7

    .line 309
    :catch_4
    move-exception v14

    move-object v5, v14

    goto :goto_8

    .line 304
    :catchall_0
    move-exception v14

    move-object v12, v14

    .line 305
    move-object v14, v2

    if-eqz v14, :cond_8

    move-object v14, v2

    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 308
    :cond_8
    :goto_9
    move-object v14, v3

    if-eqz v14, :cond_9

    move-object v14, v3

    :try_start_8
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 310
    :cond_9
    :goto_a
    move-object v14, v1

    invoke-direct {v14}, Lio/socket/engineio/client/transports/PollingXHR$Request;->cleanup()V

    move-object v14, v12

    throw v14

    .line 306
    :catch_5
    move-exception v14

    move-object v13, v14

    goto :goto_9

    .line 309
    :catch_6
    move-exception v14

    move-object v13, v14

    goto :goto_a
.end method

.method private onRequestHeaders(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "requestHeaders"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/transports/PollingXHR$Request;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 255
    return-void
.end method

.method private onResponseHeaders(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "responseHeaders"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/engineio/client/transports/PollingXHR$Request;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    .line 259
    return-void
.end method

.method private onSuccess()V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, v0

    const-string v2, "success"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lio/socket/engineio/client/transports/PollingXHR$Request;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v1

    .line 237
    return-void
.end method


# virtual methods
.method public create()V
    .locals 16

    .prologue
    .line 161
    move-object/from16 v0, p0

    move-object v7, v0

    move-object v1, v7

    .line 163
    :try_start_0
    invoke-static {}, Lio/socket/engineio/client/transports/PollingXHR;->access$200()Ljava/util/logging/Logger;

    move-result-object v7

    const-string v8, "xhr open %s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lio/socket/engineio/client/transports/PollingXHR$Request;->method:Ljava/lang/String;

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    move-object v12, v0

    iget-object v12, v12, Lio/socket/engineio/client/transports/PollingXHR$Request;->uri:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 164
    new-instance v7, Ljava/net/URL;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/transports/PollingXHR$Request;->uri:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    .line 165
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/transports/PollingXHR$Request;->proxy:Ljava/net/Proxy;

    if-eqz v8, :cond_3

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lio/socket/engineio/client/transports/PollingXHR$Request;->proxy:Ljava/net/Proxy;

    invoke-virtual {v8, v9}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 166
    :goto_0
    iput-object v8, v7, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    .line 167
    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/transports/PollingXHR$Request;->method:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    const/16 v8, 0x2710

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 175
    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    instance-of v7, v7, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v7, :cond_1

    .line 176
    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/PollingXHR$Request;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v7, :cond_0

    .line 177
    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/transports/PollingXHR$Request;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 179
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/PollingXHR$Request;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v7, :cond_1

    .line 180
    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/transports/PollingXHR$Request;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 184
    :cond_1
    new-instance v7, Ljava/util/TreeMap;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v8, v9}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v2, v7

    .line 186
    const-string v7, "POST"

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/transports/PollingXHR$Request;->method:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 187
    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 188
    move-object v7, v2

    const-string v8, "Content-type"

    new-instance v9, Ljava/util/LinkedList;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const-string v14, "application/octet-stream"

    aput-object v14, v12, v13

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 191
    :cond_2
    move-object v7, v1

    move-object v8, v2

    invoke-direct {v7, v8}, Lio/socket/engineio/client/transports/PollingXHR$Request;->onRequestHeaders(Ljava/util/Map;)V

    .line 192
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_1
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v4, v7

    .line 193
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_2
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 194
    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/PollingXHR$Request;->xhr:Ljava/net/HttpURLConnection;

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    goto :goto_2

    .line 165
    :cond_3
    move-object v8, v2

    .line 166
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 168
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 169
    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Lio/socket/engineio/client/transports/PollingXHR$Request;->onError(Ljava/lang/Exception;)V

    .line 233
    :goto_3
    return-void

    .line 196
    :cond_4
    goto :goto_1

    .line 198
    :cond_5
    invoke-static {}, Lio/socket/engineio/client/transports/PollingXHR;->access$200()Ljava/util/logging/Logger;

    move-result-object v7

    const-string v8, "sending xhr with url %s | data %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lio/socket/engineio/client/transports/PollingXHR$Request;->uri:Ljava/lang/String;

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    move-object v12, v0

    iget-object v12, v12, Lio/socket/engineio/client/transports/PollingXHR$Request;->data:[B

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 199
    new-instance v7, Ljava/lang/Thread;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    new-instance v9, Lio/socket/engineio/client/transports/PollingXHR$Request$1;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v10, v11, v12}, Lio/socket/engineio/client/transports/PollingXHR$Request$1;-><init>(Lio/socket/engineio/client/transports/PollingXHR$Request;Lio/socket/engineio/client/transports/PollingXHR$Request;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 233
    goto :goto_3
.end method
