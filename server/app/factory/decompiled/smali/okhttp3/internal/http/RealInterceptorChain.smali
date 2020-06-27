.class public final Lokhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lokhttp3/Interceptor$Chain;


# instance fields
.field private calls:I

.field private final connection:Lokhttp3/Connection;

.field private final httpCodec:Lokhttp3/internal/http/HttpCodec;

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lokhttp3/Request;

.field private final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Ljava/util/List;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/Connection;ILokhttp3/Request;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Lokhttp3/internal/connection/StreamAllocation;",
            "Lokhttp3/internal/http/HttpCodec;",
            "Lokhttp3/Connection;",
            "I",
            "Lokhttp3/Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 43
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lokhttp3/internal/http/RealInterceptorChain;->connection:Lokhttp3/Connection;

    .line 44
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 45
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lokhttp3/internal/http/RealInterceptorChain;->httpCodec:Lokhttp3/internal/http/HttpCodec;

    .line 46
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    .line 47
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 48
    return-void
.end method

.method private sameConnection(Lokhttp3/HttpUrl;)Z
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http/RealInterceptorChain;->connection:Lokhttp3/Connection;

    invoke-interface {v3}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 110
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lokhttp3/internal/http/RealInterceptorChain;->connection:Lokhttp3/Connection;

    invoke-interface {v3}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->port()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 109
    :goto_0
    move v0, v2

    return v0

    .line 110
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connection()Lokhttp3/Connection;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http/RealInterceptorChain;->connection:Lokhttp3/Connection;

    move-object v0, v1

    return-object v0
.end method

.method public httpStream()Lokhttp3/internal/http/HttpCodec;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http/RealInterceptorChain;->httpCodec:Lokhttp3/internal/http/HttpCodec;

    move-object v0, v1

    return-object v0
.end method

.method public proceed(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/internal/http/RealInterceptorChain;->httpCodec:Lokhttp3/internal/http/HttpCodec;

    move-object v6, v0

    iget-object v6, v6, Lokhttp3/internal/http/RealInterceptorChain;->connection:Lokhttp3/Connection;

    invoke-virtual {v2, v3, v4, v5, v6}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/Connection;)Lokhttp3/Response;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/Connection;)Lokhttp3/Response;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v0

    iget v8, v8, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 74
    :cond_0
    move-object v8, v0

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    iget v9, v9, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 77
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http/RealInterceptorChain;->httpCodec:Lokhttp3/internal/http/HttpCodec;

    if-eqz v8, :cond_1

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-direct {v8, v9}, Lokhttp3/internal/http/RealInterceptorChain;->sameConnection(Lokhttp3/HttpUrl;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 78
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    move-object v12, v0

    iget v12, v12, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must retain the same host and port"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 83
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http/RealInterceptorChain;->httpCodec:Lokhttp3/internal/http/HttpCodec;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget v8, v8, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 84
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    move-object v12, v0

    iget v12, v12, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must call proceed() exactly once"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 89
    :cond_2
    new-instance v8, Lokhttp3/internal/http/RealInterceptorChain;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v0

    iget v14, v14, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object v15, v1

    invoke-direct/range {v9 .. v15}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/Connection;ILokhttp3/Request;)V

    move-object v5, v8

    .line 91
    move-object v8, v0

    iget-object v8, v8, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    move-object v9, v0

    iget v9, v9, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokhttp3/Interceptor;

    move-object v6, v8

    .line 92
    move-object v8, v6

    move-object v9, v5

    invoke-interface {v8, v9}, Lokhttp3/Interceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v8

    move-object v7, v8

    .line 95
    move-object v8, v3

    if-eqz v8, :cond_3

    move-object v8, v0

    iget v8, v8, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    move-object v8, v5

    iget v8, v8, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    .line 96
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must call proceed() exactly once"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 101
    :cond_3
    move-object v8, v7

    if-nez v8, :cond_4

    .line 102
    new-instance v8, Ljava/lang/NullPointerException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 105
    :cond_4
    move-object v8, v7

    move-object v0, v8

    return-object v0
.end method

.method public request()Lokhttp3/Request;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    move-object v0, v1

    return-object v0
.end method

.method public streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    move-object v0, v1

    return-object v0
.end method
