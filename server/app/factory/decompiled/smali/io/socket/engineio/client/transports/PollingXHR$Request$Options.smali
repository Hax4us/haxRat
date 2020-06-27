.class public Lio/socket/engineio/client/transports/PollingXHR$Request$Options;
.super Ljava/lang/Object;
.source "PollingXHR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/engineio/client/transports/PollingXHR$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public data:[B

.field public hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field public method:Ljava/lang/String;

.field public proxy:Ljava/net/Proxy;

.field public sslContext:Ljavax/net/ssl/SSLContext;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
