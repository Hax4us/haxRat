.class Lio/socket/engineio/client/transports/PollingXHR$Request$1;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/PollingXHR$Request;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/transports/PollingXHR$Request;

.field final synthetic val$self:Lio/socket/engineio/client/transports/PollingXHR$Request;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/PollingXHR$Request;Lio/socket/engineio/client/transports/PollingXHR$Request;)V
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->this$0:Lio/socket/engineio/client/transports/PollingXHR$Request;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->val$self:Lio/socket/engineio/client/transports/PollingXHR$Request;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 202
    move-object v0, p0

    const/4 v6, 0x0

    move-object v1, v6

    .line 204
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->val$self:Lio/socket/engineio/client/transports/PollingXHR$Request;

    invoke-static {v6}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$300(Lio/socket/engineio/client/transports/PollingXHR$Request;)[B

    move-result-object v6

    if-eqz v6, :cond_0

    .line 205
    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->this$0:Lio/socket/engineio/client/transports/PollingXHR$Request;

    invoke-static {v6}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$400(Lio/socket/engineio/client/transports/PollingXHR$Request;)Ljava/net/HttpURLConnection;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->val$self:Lio/socket/engineio/client/transports/PollingXHR$Request;

    invoke-static {v7}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$300(Lio/socket/engineio/client/transports/PollingXHR$Request;)[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 206
    new-instance v6, Ljava/io/BufferedOutputStream;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->this$0:Lio/socket/engineio/client/transports/PollingXHR$Request;

    invoke-static {v8}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$400(Lio/socket/engineio/client/transports/PollingXHR$Request;)Ljava/net/HttpURLConnection;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v6

    .line 207
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->val$self:Lio/socket/engineio/client/transports/PollingXHR$Request;

    invoke-static {v7}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$300(Lio/socket/engineio/client/transports/PollingXHR$Request;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 208
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 211
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->this$0:Lio/socket/engineio/client/transports/PollingXHR$Request;

    invoke-static {v6}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$400(Lio/socket/engineio/client/transports/PollingXHR$Request;)Ljava/net/HttpURLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    move-object v2, v6

    .line 212
    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->val$self:Lio/socket/engineio/client/transports/PollingXHR$Request;

    move-object v7, v2

    invoke-static {v6, v7}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$500(Lio/socket/engineio/client/transports/PollingXHR$Request;Ljava/util/Map;)V

    .line 214
    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->this$0:Lio/socket/engineio/client/transports/PollingXHR$Request;

    invoke-static {v6}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$400(Lio/socket/engineio/client/transports/PollingXHR$Request;)Ljava/net/HttpURLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    move v3, v6

    .line 215
    const/16 v6, 0xc8

    move v7, v3

    if-ne v6, v7, :cond_2

    .line 216
    move-object v6, v0

    iget-object v6, v6, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->val$self:Lio/socket/engineio/client/transports/PollingXHR$Request;

    invoke-static {v6}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$600(Lio/socket/engineio/client/transports/PollingXHR$Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    :cond_1
    :goto_1
    return-void

    .line 218
    :cond_2
    move-object v6, v0

    :try_start_2
    iget-object v6, v6, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->val$self:Lio/socket/engineio/client/transports/PollingXHR$Request;

    new-instance v7, Ljava/io/IOException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$700(Lio/socket/engineio/client/transports/PollingXHR$Request;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 221
    move-object v6, v0

    :try_start_3
    iget-object v6, v6, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->val$self:Lio/socket/engineio/client/transports/PollingXHR$Request;

    move-object v7, v2

    invoke-static {v6, v7}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$700(Lio/socket/engineio/client/transports/PollingXHR$Request;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    move-object v6, v1

    if-eqz v6, :cond_3

    move-object v6, v1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 229
    :cond_3
    goto :goto_1

    :catch_1
    move-exception v6

    move-object v2, v6

    .line 230
    goto :goto_1

    .line 229
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 230
    goto :goto_1

    .line 222
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 225
    move-object v6, v0

    :try_start_5
    iget-object v6, v6, Lio/socket/engineio/client/transports/PollingXHR$Request$1;->val$self:Lio/socket/engineio/client/transports/PollingXHR$Request;

    move-object v7, v2

    invoke-static {v6, v7}, Lio/socket/engineio/client/transports/PollingXHR$Request;->access$700(Lio/socket/engineio/client/transports/PollingXHR$Request;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 228
    move-object v6, v1

    if-eqz v6, :cond_4

    move-object v6, v1

    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 229
    :cond_4
    goto :goto_1

    :catch_4
    move-exception v6

    move-object v2, v6

    .line 230
    goto :goto_1

    .line 227
    :catchall_0
    move-exception v6

    move-object v4, v6

    .line 228
    move-object v6, v1

    if-eqz v6, :cond_5

    move-object v6, v1

    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 229
    :cond_5
    :goto_2
    move-object v6, v4

    throw v6

    :catch_5
    move-exception v6

    move-object v5, v6

    goto :goto_2
.end method
