.class public abstract Lcom/startapp/android/publish/adsCommon/g/a/a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/g/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/g/a/a$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseMraidController"


# instance fields
.field protected openListener:Lcom/startapp/android/publish/adsCommon/g/a/a$a;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/adsCommon/g/a/a$a;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/g/a/a;->openListener:Lcom/startapp/android/publish/adsCommon/g/a/a$a;

    return-void
.end method


# virtual methods
.method protected applyOrientationProperties(Landroid/app/Activity;Lcom/startapp/android/publish/adsCommon/g/c/a;)V
    .registers 7

    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 80
    :goto_11
    iget v3, p2, Lcom/startapp/android/publish/adsCommon/g/c/a;->b:I

    if-nez v3, :cond_17

    const/4 v1, 0x1

    goto :goto_23

    .line 83
    :cond_17
    iget v3, p2, Lcom/startapp/android/publish/adsCommon/g/c/a;->b:I

    if-ne v3, v2, :cond_1c

    goto :goto_23

    .line 88
    :cond_1c
    iget-boolean p2, p2, Lcom/startapp/android/publish/adsCommon/g/c/a;->a:Z

    if-eqz p2, :cond_22

    const/4 v1, -0x1

    goto :goto_23

    :cond_22
    move v1, v0

    .line 98
    :goto_23
    invoke-static {p1, v1}, Lcom/startapp/common/a/c;->a(Landroid/app/Activity;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_35

    :catch_27
    move-exception p2

    .line 100
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "BaseMraidController.applyOrientationProperties"

    const-string v2, ""

    invoke-static {p1, v0, v1, p2, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void
.end method

.method public abstract close()V
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .registers 4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCalendarEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMraidController"

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "calendar"

    .line 117
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/g/a/a;->isFeatureSupported(Ljava/lang/String;)Z

    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .registers 4

    const-string p1, "BaseMraidController"

    const/4 v0, 0x3

    const-string v1, "expand"

    .line 44
    invoke-static {p1, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public abstract isFeatureSupported(Ljava/lang/String;)Z
.end method

.method public open(Ljava/lang/String;)Z
    .registers 5

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMraidController"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :try_start_17
    const-string v0, "UTF-8"

    .line 53
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sms"

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 55
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/g/a/a;->openSMS(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2e
    const-string v0, "tel"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 57
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/g/a/a;->openTel(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 59
    :cond_3b
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/g/a/a;->openListener:Lcom/startapp/android/publish/adsCommon/g/a/a$a;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/adsCommon/g/a/a$a;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_41} :catch_42

    return p1

    :catch_42
    move-exception v0

    const/4 v2, 0x6

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/g/a/a;->openListener:Lcom/startapp/android/publish/adsCommon/g/a/a$a;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/adsCommon/g/a/a$a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public openSMS(Ljava/lang/String;)Z
    .registers 4

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openSMS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMraidController"

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "sms"

    .line 143
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/g/a/a;->isFeatureSupported(Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public openTel(Ljava/lang/String;)Z
    .registers 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openTel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMraidController"

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "tel"

    .line 155
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/g/a/a;->isFeatureSupported(Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public playVideo(Ljava/lang/String;)V
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playVideo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMraidController"

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "inlineVideo"

    .line 125
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/g/a/a;->isFeatureSupported(Ljava/lang/String;)Z

    return-void
.end method

.method public resize()V
    .registers 4

    const-string v0, "BaseMraidController"

    const/4 v1, 0x3

    const-string v2, "resize"

    .line 38
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public abstract setOrientationProperties(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public setResizeProperties(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResizeProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMraidController"

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .registers 4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storePicture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMraidController"

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "storePicture"

    .line 133
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/g/a/a;->isFeatureSupported(Ljava/lang/String;)Z

    return-void
.end method

.method public abstract useCustomClose(Ljava/lang/String;)V
.end method
