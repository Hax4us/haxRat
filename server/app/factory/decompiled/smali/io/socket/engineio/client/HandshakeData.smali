.class public Lio/socket/engineio/client/HandshakeData;
.super Ljava/lang/Object;
.source "HandshakeData.java"


# instance fields
.field public pingInterval:J

.field public pingTimeout:J

.field public sid:Ljava/lang/String;

.field public upgrades:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lio/socket/engineio/client/HandshakeData;-><init>(Lorg/json/JSONObject;)V

    .line 17
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v6, v1

    const-string v7, "upgrades"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v2, v6

    .line 21
    move-object v6, v2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v3, v6

    .line 22
    move v6, v3

    new-array v6, v6, [Ljava/lang/String;

    move-object v4, v6

    .line 23
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 24
    move-object v6, v4

    move v7, v5

    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 23
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 27
    :cond_0
    move-object v6, v0

    move-object v7, v1

    const-string v8, "sid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lio/socket/engineio/client/HandshakeData;->sid:Ljava/lang/String;

    .line 28
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lio/socket/engineio/client/HandshakeData;->upgrades:[Ljava/lang/String;

    .line 29
    move-object v6, v0

    move-object v7, v1

    const-string v8, "pingInterval"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lio/socket/engineio/client/HandshakeData;->pingInterval:J

    .line 30
    move-object v6, v0

    move-object v7, v1

    const-string v8, "pingTimeout"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lio/socket/engineio/client/HandshakeData;->pingTimeout:J

    .line 31
    return-void
.end method
