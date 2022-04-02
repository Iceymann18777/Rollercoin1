.class public final Lcom/google/android/exoplayer2/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static logLevel:I = 0x0

.field private static logStackTraces:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static appendThrowableMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 148
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_22

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_22
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 82
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    if-nez v0, :cond_7

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 130
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_8

    .line 131
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 137
    sget-boolean v0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    if-nez v0, :cond_c

    .line 138
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 139
    :cond_c
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_14

    .line 140
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 98
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    .line 99
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 114
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_8

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 121
    sget-boolean v0, Lcom/google/android/exoplayer2/util/Log;->logStackTraces:Z

    if-nez v0, :cond_c

    .line 122
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->appendThrowableMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 123
    :cond_c
    sget v0, Lcom/google/android/exoplayer2/util/Log;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_14

    .line 124
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method
