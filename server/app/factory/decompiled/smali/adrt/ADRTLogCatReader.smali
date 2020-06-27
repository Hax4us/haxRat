.class public Ladrt/ADRTLogCatReader;
.super Ljava/lang/Object;
.source "ADRTLogCatReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static context:Landroid/content/Context;


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
    .locals 10

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, p1

    sget-object v5, Ladrt/ADRTLogCatReader;->context:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 36
    :goto_0
    return-void

    .line 14
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Ladrt/ADRTLogCatReader;->context:Landroid/content/Context;

    .line 16
    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v2, v5

    .line 17
    move v5, v2

    if-nez v5, :cond_2

    .line 19
    goto :goto_0

    .line 16
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 24
    :cond_2
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v3, v5

    .line 25
    move-object v5, v3

    move-object v6, v1

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v4, v5

    .line 32
    sget-object v5, Ladrt/ADRTLogCatReader;->context:Landroid/content/Context;

    move-object v6, v1

    invoke-static {v5, v6}, Ladrt/ADRTSender;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    new-instance v5, Ljava/lang/Thread;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ladrt/ADRTLogCatReader;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ladrt/ADRTLogCatReader;-><init>()V

    const-string v8, "LogCat"

    invoke-direct {v6, v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v3, v5

    .line 35
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 36
    goto :goto_0

    .line 27
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 29
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 42
    move-object v0, p0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "logcat -v threadtime"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    move-object v1, v4

    .line 43
    new-instance v4, Ljava/io/BufferedReader;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/io/InputStreamReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x14

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v4

    .line 45
    const-string v4, ""

    move-object v3, v4

    .line 46
    :goto_0
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v3, v5

    if-eqz v4, :cond_0

    .line 48
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v3

    aput-object v7, v5, v6

    invoke-static {v4}, Ladrt/ADRTSender;->sendLogcatLines([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :cond_0
    :goto_1
    return-void

    .line 54
    :catch_0
    move-exception v4

    move-object v1, v4

    goto :goto_1
.end method
