.class Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
.super Ljava/lang/Object;
.source "JdkWithJettyBootPlatform.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/JdkWithJettyBootPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JettyNegoProvider"
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selected:Ljava/lang/String;

.field unsupported:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 114
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    .line 115
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 119
    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    move-object v5, v9

    .line 120
    move-object v9, v3

    if-nez v9, :cond_0

    .line 121
    sget-object v9, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object v3, v9

    .line 123
    :cond_0
    move-object v9, v4

    const-string v10, "supports"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v10, v5

    if-ne v9, v10, :cond_1

    .line 124
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v0, v9

    .line 145
    :goto_0
    return-object v0

    .line 125
    :cond_1
    move-object v9, v4

    const-string v10, "unsupported"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v10, v5

    if-ne v9, v10, :cond_2

    .line 126
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z

    .line 127
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 128
    :cond_2
    move-object v9, v4

    const-string v10, "protocols"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v3

    array-length v9, v9

    if-nez v9, :cond_3

    .line 129
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    move-object v0, v9

    goto :goto_0

    .line 130
    :cond_3
    move-object v9, v4

    const-string v10, "selectProtocol"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    move-object v9, v4

    const-string v10, "select"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_4
    const-class v9, Ljava/lang/String;

    move-object v10, v5

    if-ne v9, v10, :cond_7

    move-object v9, v3

    array-length v9, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    move-object v9, v3

    const/4 v10, 0x0

    aget-object v9, v9, v10

    instance-of v9, v9, Ljava/util/List;

    if-eqz v9, :cond_7

    .line 132
    move-object v9, v3

    const/4 v10, 0x0

    aget-object v9, v9, v10

    check-cast v9, Ljava/util/List;

    move-object v6, v9

    .line 134
    const/4 v9, 0x0

    move v7, v9

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v8, v9

    :goto_1
    move v9, v7

    move v10, v8

    if-ge v9, v10, :cond_6

    .line 135
    move-object v9, v0

    iget-object v9, v9, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    move-object v10, v6

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 136
    move-object v9, v0

    move-object v10, v6

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v12, v9

    move-object v13, v10

    move-object v9, v13

    move-object v10, v12

    move-object v11, v13

    iput-object v11, v10, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    move-object v0, v9

    goto :goto_0

    .line 134
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 139
    :cond_6
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v12, v9

    move-object v13, v10

    move-object v9, v13

    move-object v10, v12

    move-object v11, v13

    iput-object v11, v10, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    move-object v0, v9

    goto/16 :goto_0

    .line 140
    :cond_7
    move-object v9, v4

    const-string v10, "protocolSelected"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    move-object v9, v4

    const-string v10, "selected"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    move-object v9, v3

    array-length v9, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 142
    move-object v9, v0

    move-object v10, v3

    const/4 v11, 0x0

    aget-object v10, v10, v11

    check-cast v10, Ljava/lang/String;

    iput-object v10, v9, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    .line 143
    const/4 v9, 0x0

    move-object v0, v9

    goto/16 :goto_0

    .line 145
    :cond_9
    move-object v9, v2

    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0
.end method
