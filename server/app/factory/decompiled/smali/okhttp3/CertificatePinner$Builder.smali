.class public final Lokhttp3/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CertificatePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final pins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 317
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 318
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lokhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;
    .locals 13

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "pattern == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 330
    :cond_0
    move-object v7, v2

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 331
    move-object v7, v0

    iget-object v7, v7, Lokhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    new-instance v8, Lokhttp3/CertificatePinner$Pin;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    move-object v11, v6

    invoke-direct {v9, v10, v11}, Lokhttp3/CertificatePinner$Pin;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 330
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 334
    :cond_1
    move-object v7, v0

    move-object v0, v7

    return-object v0
.end method

.method public build()Lokhttp3/CertificatePinner;
    .locals 7

    .prologue
    .line 338
    move-object v0, p0

    new-instance v1, Lokhttp3/CertificatePinner;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/util/LinkedHashSet;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lokhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    move-object v0, v1

    return-object v0
.end method
