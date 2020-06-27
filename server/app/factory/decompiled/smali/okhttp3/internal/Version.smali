.class public final Lokhttp3/internal/Version;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static userAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "okhttp/3.5.0"

    return-object v0
.end method
