.class public final Lcom/appnext/base/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 23
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_6
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_6
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_6
    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_6
    return-void
.end method
