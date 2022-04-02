.class public Lcom/startapp/android/publish/ads/video/c/b/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Lcom/startapp/android/publish/ads/video/c/a/e;Lcom/startapp/android/publish/ads/video/c/a/c;)Lcom/startapp/android/publish/ads/video/c/a/a/b;
    .registers 6

    const-string v0, "VASTModelPostValidator"

    const/4 v1, 0x3

    const-string v2, "validate"

    .line 30
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 32
    invoke-static {p0}, Lcom/startapp/android/publish/ads/video/c/b/a;->a(Lcom/startapp/android/publish/ads/video/c/a/e;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_15

    const-string p0, "Validator returns: not valid (invalid model)"

    .line 33
    invoke-static {v0, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    :cond_15
    if-eqz p1, :cond_41

    .line 40
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/e;->b()Ljava/util/List;

    move-result-object p0

    .line 41
    invoke-virtual {p1, p0}, Lcom/startapp/android/publish/ads/video/c/a/c;->a(Ljava/util/List;)Lcom/startapp/android/publish/ads/video/c/a/a/b;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 44
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaPicker selected mediaFile with URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    move-object v3, p0

    goto :goto_47

    :cond_41
    const/4 p0, 0x5

    const-string p1, "mediaPicker: We don\'t have a compatible media file to play."

    .line 51
    invoke-static {v0, p0, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    :cond_47
    :goto_47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Validator returns: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_56

    const-string p1, "valid"

    goto :goto_58

    :cond_56
    const-string p1, "not valid (no media file)"

    :goto_58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method public static a(Lcom/startapp/android/publish/ads/video/c/a/e;)Z
    .registers 5

    const-string v0, "VASTModelPostValidator"

    const/4 v1, 0x3

    const-string v2, "validateModel"

    .line 61
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/e;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_18

    :cond_16
    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v2, 0x0

    .line 71
    :goto_19
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/c/a/e;->b()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 72
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_26

    goto :goto_28

    :cond_26
    move v3, v2

    goto :goto_2d

    :cond_28
    :goto_28
    const-string p0, "Validator error: mediaFile list invalid"

    .line 73
    invoke-static {v0, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2d
    return v3
.end method
