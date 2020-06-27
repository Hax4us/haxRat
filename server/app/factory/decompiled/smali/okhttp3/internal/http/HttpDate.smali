.class public final Lokhttp3/internal/http/HttpDate;
.super Ljava/lang/Object;
.source "HttpDate.java"


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field public static final MAX_DATE:J = 0xe677d21fdbffL

.field private static final STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lokhttp3/internal/http/HttpDate$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lokhttp3/internal/http/HttpDate$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    .line 49
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "EEE MMM d HH:mm:ss yyyy"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string v3, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string v3, "EEE dd MMM yy HH:mm:ss z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string v3, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string v3, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string v3, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string v3, "EEE MMM d yyyy HH:mm:ss z"

    aput-object v3, v1, v2

    sput-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    .line 71
    sget-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    sget-object v1, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 13

    .prologue
    .line 76
    move-object v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 77
    const/4 v8, 0x0

    move-object v0, v8

    .line 109
    :goto_0
    return-object v0

    .line 80
    :cond_0
    new-instance v8, Ljava/text/ParsePosition;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v1, v8

    .line 81
    sget-object v8, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/text/DateFormat;

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    move-object v2, v8

    .line 82
    move-object v8, v1

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 85
    move-object v8, v2

    move-object v0, v8

    goto :goto_0

    .line 87
    :cond_1
    sget-object v8, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v3, v9

    monitor-enter v8

    .line 88
    const/4 v8, 0x0

    move v4, v8

    :try_start_0
    sget-object v8, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v8, v8

    move v5, v8

    :goto_1
    move v8, v4

    move v9, v5

    if-ge v8, v9, :cond_4

    .line 89
    sget-object v8, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    move v9, v4

    aget-object v8, v8, v9

    move-object v6, v8

    .line 90
    move-object v8, v6

    if-nez v8, :cond_2

    .line 91
    new-instance v8, Ljava/text/SimpleDateFormat;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    sget-object v10, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    move v11, v4

    aget-object v10, v10, v11

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v6, v8

    .line 94
    move-object v8, v6

    sget-object v9, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    sget-object v8, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    move v9, v4

    move-object v10, v6

    aput-object v10, v8, v9

    .line 97
    :cond_2
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 98
    move-object v8, v6

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    move-object v2, v8

    .line 99
    move-object v8, v1

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-eqz v8, :cond_3

    .line 105
    move-object v8, v2

    move-object v9, v3

    monitor-exit v9

    move-object v0, v8

    goto :goto_0

    .line 88
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 108
    :cond_4
    move-object v8, v3

    monitor-exit v8

    .line 109
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8
.end method
