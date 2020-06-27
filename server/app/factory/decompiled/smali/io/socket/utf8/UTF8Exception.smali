.class public Lio/socket/utf8/UTF8Exception;
.super Ljava/io/IOException;
.source "UTF8Exception.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 16
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method
