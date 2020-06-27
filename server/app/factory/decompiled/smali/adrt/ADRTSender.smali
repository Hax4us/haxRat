.class public Ladrt/ADRTSender;
.super Ljava/lang/Object;
.source "ADRTSender.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static debuggerPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onContext(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    sput-object v2, Ladrt/ADRTSender;->context:Landroid/content/Context;

    .line 15
    move-object v2, v1

    sput-object v2, Ladrt/ADRTSender;->debuggerPackageName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static sendBreakpointHit(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    new-instance v8, Landroid/content/Intent;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    move-object v7, v8

    .line 41
    move-object v8, v7

    sget-object v9, Ladrt/ADRTSender;->debuggerPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 42
    move-object v8, v7

    const-string v9, "com.adrt.BREAKPOINT_HIT"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 43
    move-object v8, v7

    const-string v9, "package"

    move-object v10, v0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 44
    move-object v8, v7

    const-string v9, "variables"

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v8

    .line 45
    move-object v8, v7

    const-string v9, "variableValues"

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v8

    .line 46
    move-object v8, v7

    const-string v9, "variableKinds"

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v8

    .line 47
    move-object v8, v7

    const-string v9, "stackMethods"

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v8

    .line 48
    move-object v8, v7

    const-string v9, "stackLocations"

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v8

    .line 49
    move-object v8, v7

    const-string v9, "stackLocationKinds"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v8

    .line 51
    sget-object v8, Ladrt/ADRTSender;->context:Landroid/content/Context;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method public static sendConnect(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    new-instance v2, Landroid/content/Intent;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v1, v2

    .line 21
    move-object v2, v1

    sget-object v3, Ladrt/ADRTSender;->debuggerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 22
    move-object v2, v1

    const-string v3, "com.adrt.CONNECT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 23
    move-object v2, v1

    const-string v3, "package"

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 24
    sget-object v2, Ladrt/ADRTSender;->context:Landroid/content/Context;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 25
    return-void
.end method

.method public static sendFields(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    new-instance v6, Landroid/content/Intent;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v5, v6

    .line 58
    move-object v6, v5

    sget-object v7, Ladrt/ADRTSender;->debuggerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 59
    move-object v6, v5

    const-string v7, "com.adrt.FIELDS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 60
    move-object v6, v5

    const-string v7, "package"

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 61
    move-object v6, v5

    const-string v7, "path"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 62
    move-object v6, v5

    const-string v7, "fields"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v6

    .line 63
    move-object v6, v5

    const-string v7, "fieldValues"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v6

    .line 64
    move-object v6, v5

    const-string v7, "fieldKinds"

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v6

    .line 65
    sget-object v6, Ladrt/ADRTSender;->context:Landroid/content/Context;

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public static sendLogcatLines([Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    new-instance v2, Landroid/content/Intent;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v1, v2

    .line 71
    move-object v2, v1

    sget-object v3, Ladrt/ADRTSender;->debuggerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 72
    move-object v2, v1

    const-string v3, "com.adrt.LOGCAT_ENTRIES"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 73
    move-object v2, v1

    const-string v3, "lines"

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 74
    sget-object v2, Ladrt/ADRTSender;->context:Landroid/content/Context;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public static sendStop(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    new-instance v2, Landroid/content/Intent;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v1, v2

    .line 30
    move-object v2, v1

    sget-object v3, Ladrt/ADRTSender;->debuggerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 31
    move-object v2, v1

    const-string v3, "com.adrt.STOP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 32
    move-object v2, v1

    const-string v3, "package"

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 33
    sget-object v2, Ladrt/ADRTSender;->context:Landroid/content/Context;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 34
    return-void
.end method
