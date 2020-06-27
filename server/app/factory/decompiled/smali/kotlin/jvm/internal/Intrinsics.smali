.class public Lkotlin/jvm/internal/Intrinsics;
.super Ljava/lang/Object;
.source "Intrinsics.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static areEqual(DLjava/lang/Double;)Z
    .locals 7
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 168
    move-wide v0, p0

    move-object v2, p2

    move-object v3, v2

    if-eqz v3, :cond_0

    move-wide v3, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static areEqual(FLjava/lang/Float;)Z
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 183
    move v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static areEqual(Ljava/lang/Double;D)Z
    .locals 7
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    move-wide v5, v1

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static areEqual(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 6
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static areEqual(Ljava/lang/Float;F)Z
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 78
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must not be null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/IllegalStateException;

    throw v2

    .line 80
    :cond_0
    return-void
.end method

.method public static checkFieldIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 110
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/IllegalStateException;

    throw v2

    .line 112
    :cond_0
    return-void
.end method

.method public static checkFieldIsNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    if-nez v3, :cond_0

    .line 104
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field specified as non-null is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/IllegalStateException;

    throw v3

    .line 106
    :cond_0
    return-void
.end method

.method public static checkHasClass(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v3, v0

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 215
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 222
    return-void

    .line 217
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 218
    new-instance v3, Ljava/lang/ClassNotFoundException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not found. Please update the Kotlin runtime to the latest version"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassNotFoundException;

    throw v3
.end method

.method public static checkHasClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 227
    move-object v4, v2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 234
    return-void

    .line 229
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 230
    new-instance v4, Ljava/lang/ClassNotFoundException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not found: this code requires the Kotlin runtime of version at least "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassNotFoundException;

    throw v4
.end method

.method public static checkNotNull(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 26
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 28
    :cond_0
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 32
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwNpe(Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/IllegalStateException;

    throw v2

    .line 86
    :cond_0
    return-void
.end method

.method public static checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/IllegalArgumentException;

    throw v2

    .line 124
    :cond_0
    return-void
.end method

.method public static checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 116
    move-object v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwParameterIsNullException(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public static checkReturnedValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 98
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/IllegalStateException;

    throw v2

    .line 100
    :cond_0
    return-void
.end method

.method public static checkReturnedValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    if-nez v3, :cond_0

    .line 90
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Method specified as non-null returned null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/IllegalStateException;

    throw v3

    .line 94
    :cond_0
    return-void
.end method

.method public static compare(II)I
    .locals 4

    .prologue
    .line 149
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    if-ge v2, v3, :cond_0

    const/4 v2, -0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move v2, v0

    move v3, v1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 8

    .prologue
    .line 145
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, v0

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    move-wide v4, v0

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static needClassReification()V
    .locals 0

    .prologue
    .line 205
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwUndefinedForReified()V

    .line 206
    return-void
.end method

.method public static needClassReification(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUndefinedForReified(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static reifiedOperationMarker(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwUndefinedForReified()V

    .line 198
    return-void
.end method

.method public static reifiedOperationMarker(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 201
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUndefinedForReified(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private static sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, v0

    const-class v2, Lkotlin/jvm/internal/Intrinsics;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static sanitizeStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    move-object v2, v6

    .line 242
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 244
    const/4 v6, -0x1

    move v4, v6

    .line 245
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 246
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    move v6, v5

    move v4, v6

    .line 245
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 251
    :cond_1
    move-object v6, v2

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    invoke-interface {v6, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    move-object v5, v6

    .line 252
    move-object v6, v0

    move-object v7, v5

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/StackTraceElement;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 253
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method

.method public static stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static throwAssert()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/lang/AssertionError;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/AssertionError;

    throw v0
.end method

.method public static throwAssert(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/AssertionError;

    throw v1
.end method

.method public static throwIllegalArgument()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/IllegalArgumentException;

    throw v0
.end method

.method public static throwIllegalArgument(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/IllegalArgumentException;

    throw v1
.end method

.method public static throwIllegalState()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/IllegalStateException;

    throw v0
.end method

.method public static throwIllegalState(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/IllegalStateException;

    throw v1
.end method

.method public static throwNpe()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lkotlin/KotlinNullPointerException;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkotlin/KotlinNullPointerException;-><init>()V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lkotlin/KotlinNullPointerException;

    throw v0
.end method

.method public static throwNpe(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    new-instance v1, Lkotlin/KotlinNullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkotlin/KotlinNullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lkotlin/KotlinNullPointerException;

    throw v1
.end method

.method private static throwParameterIsNullException(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 127
    move-object v0, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    move-object v1, v6

    .line 133
    move-object v6, v1

    const/4 v7, 0x3

    aget-object v6, v6, v7

    move-object v2, v6

    .line 134
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 135
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 137
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parameter specified as non-null is null: method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", parameter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 141
    move-object v6, v5

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/lang/IllegalArgumentException;

    throw v6
.end method

.method public static throwUndefinedForReified()V
    .locals 1

    .prologue
    .line 187
    const-string v0, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUndefinedForReified(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static throwUndefinedForReified(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 193
    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static throwUninitializedProperty(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    new-instance v1, Lkotlin/UninitializedPropertyAccessException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lkotlin/UninitializedPropertyAccessException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lkotlin/UninitializedPropertyAccessException;

    throw v1
.end method

.method public static throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lateinit property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not been initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedProperty(Ljava/lang/String;)V

    .line 50
    return-void
.end method
