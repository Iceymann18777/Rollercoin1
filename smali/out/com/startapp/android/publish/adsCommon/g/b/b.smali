.class public Lcom/startapp/android/publish/adsCommon/g/b/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/g/b/b;->a:Landroid/content/Context;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/g/b/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 5

    .line 33
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/g/b/b;->b:Ljava/util/List;

    const-string v1, "calendar"

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1c

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/g/b/b;->a:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_CALENDAR"

    .line 36
    invoke-static {v0, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const/4 v1, 0x3

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCalendarSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MraidNativeFeatureManager"

    invoke-static {v3, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 80
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/g/b/b;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .registers 5

    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/g/b/b;->b:Ljava/util/List;

    const-string v1, "inlineVideo"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInlineVideoSupported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MraidNativeFeatureManager"

    const/4 v3, 0x3

    invoke-static {v2, v3, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public c()Z
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/g/b/b;->b:Ljava/util/List;

    const-string v1, "sms"

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/g/b/b;->a:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    .line 53
    invoke-static {v0, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    const/4 v1, 0x3

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmsSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MraidNativeFeatureManager"

    invoke-static {v3, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public d()Z
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/g/b/b;->b:Ljava/util/List;

    const-string v1, "storePicture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStorePictureSupported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MraidNativeFeatureManager"

    const/4 v3, 0x3

    invoke-static {v2, v3, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public e()Z
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/g/b/b;->b:Ljava/util/List;

    const-string v1, "tel"

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/g/b/b;->a:Landroid/content/Context;

    const-string v1, "android.permission.CALL_PHONE"

    .line 69
    invoke-static {v0, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    const/4 v1, 0x3

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTelSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MraidNativeFeatureManager"

    invoke-static {v3, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/g/b/b;->b:Ljava/util/List;

    return-object v0
.end method
