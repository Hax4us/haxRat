.class final Lokhttp3/internal/http/HttpDate$1;
.super Ljava/lang/ThreadLocal;
.source "HttpDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/HttpDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpDate$1;->initialValue()Ljava/text/DateFormat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected initialValue()Ljava/text/DateFormat;
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    new-instance v2, Ljava/text/SimpleDateFormat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v1, v2

    .line 42
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 43
    move-object v2, v1

    sget-object v3, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 44
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
