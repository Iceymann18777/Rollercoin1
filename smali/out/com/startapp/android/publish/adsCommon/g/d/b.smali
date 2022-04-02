.class public Lcom/startapp/android/publish/adsCommon/g/d/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseCommandUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidParser"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x8

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x3f

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_59

    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    array-length v2, v0

    const/4 v5, 0x0

    :goto_3e
    if-ge v5, v2, :cond_58

    aget-object v6, v0, v5

    const/16 v7, 0x3d

    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 40
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    :cond_58
    move-object v0, v4

    .line 49
    :cond_59
    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/g/d/b;->b(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-nez v2, :cond_7b

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is unknown"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return-object v3

    .line 55
    :cond_7b
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/g/d/b;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is missing parameters"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return-object v3

    .line 60
    :cond_9b
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "command"

    .line 61
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {p0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "createCalendarEvent"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "eventJSON"

    .line 85
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const-string v0, "open"

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    const-string v0, "playVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    const-string v0, "storePicture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_8c

    :cond_28
    const-string v0, "setOrientationProperties"

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_44

    const-string p0, "allowOrientationChange"

    .line 89
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const-string p0, "forceOrientation"

    .line 90
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 v1, 0x1

    :cond_43
    return v1

    :cond_44
    const-string v0, "setResizeProperties"

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string p0, "width"

    .line 92
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7d

    const-string p0, "height"

    .line 93
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7d

    const-string p0, "offsetX"

    .line 94
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7d

    const-string p0, "offsetY"

    .line 95
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7d

    const-string p0, "customClosePosition"

    .line 96
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7d

    const-string p0, "allowOffscreen"

    .line 97
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7d

    const/4 v1, 0x1

    :cond_7d
    return v1

    :cond_7e
    const-string v0, "useCustomClose"

    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 99
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8b
    return v2

    :cond_8c
    :goto_8c
    const-string p0, "url"

    .line 87
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 11

    const-string v0, "close"

    const-string v1, "createCalendarEvent"

    const-string v2, "expand"

    const-string v3, "open"

    const-string v4, "playVideo"

    const-string v5, "resize"

    const-string v6, "setOrientationProperties"

    const-string v7, "setResizeProperties"

    const-string v8, "storePicture"

    const-string v9, "useCustomClose"

    .line 68
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
