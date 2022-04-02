.class Landroidx/media2/widget/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# direct methods
.method static isFromNetwork(Landroid/net/Uri;)Z
    .registers 3

    .line 26
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    const-string v1, "http"

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "rtsp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method
