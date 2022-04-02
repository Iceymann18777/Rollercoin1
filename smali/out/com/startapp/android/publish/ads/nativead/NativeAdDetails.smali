.class public Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/ads/nativead/NativeAdInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$a;

.field private c:Lcom/startapp/android/publish/common/model/AdDetails;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/common/model/AdDetails;Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;ILcom/startapp/android/publish/ads/nativead/NativeAdDetails$a;)V
    .registers 8

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->f:Z

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializiang SingleAd ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartAppNativeAd"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    .line 48
    iput p3, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->a:I

    .line 49
    iput-object p4, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->b:Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$a;

    .line 51
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/nativead/NativeAdPreferences;->isAutoBitmapDownload()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 55
    new-instance p1, Lcom/startapp/common/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;

    invoke-direct {p4, p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$1;-><init>(Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;)V

    invoke-direct {p1, p2, p4, p3}, Lcom/startapp/common/a;-><init>(Ljava/lang/String;Lcom/startapp/common/a$a;I)V

    .line 67
    invoke-virtual {p1}, Lcom/startapp/common/a;->a()V

    goto :goto_43

    .line 70
    :cond_40
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->a()V

    :goto_43
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 108
    new-instance v1, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$2;-><init>(Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->g:Ljava/lang/String;

    return-void
.end method

.method protected b()Lcom/startapp/android/publish/common/model/AdDetails;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    return-object v0
.end method

.method b(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getCampaignAction()Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;
    .registers 3

    .line 209
    sget-object v0, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;->b:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    .line 210
    iget-object v1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v1, :cond_e

    .line 211
    invoke-virtual {v1}, Lcom/startapp/android/publish/common/model/AdDetails;->isCPE()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 212
    sget-object v0, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;->a:Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    :cond_e
    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v0, :cond_9

    .line 193
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getCategory()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v0, :cond_9

    .line 138
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v0, :cond_9

    .line 156
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public getInstalls()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v0, :cond_9

    .line 184
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getInstalls()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public getPackacgeName()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v0, :cond_9

    .line 202
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public getRating()F
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v0, :cond_9

    .line 147
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getRating()F

    move-result v0

    goto :goto_b

    :cond_9
    const/high16 v0, 0x40a00000    # 5.0f

    :goto_b
    return v0
.end method

.method public getSecondaryImageBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSecondaryImageUrl()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v0, :cond_9

    .line 165
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getSecondaryImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v0, :cond_9

    .line 129
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public isApp()Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x1

    .line 222
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v1, :cond_11

    .line 224
    invoke-virtual {v1}, Lcom/startapp/android/publish/common/model/AdDetails;->isApp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method public sendClick(Landroid/content/Context;)V
    .registers 15

    .line 237
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v0, :cond_a5

    .line 238
    sget-object v0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails$3;->a:[I

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getCampaignAction()Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    goto/16 :goto_a5

    .line 250
    :cond_18
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getPackacgeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/model/AdDetails;->getIntentDetails()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapp/android/publish/adsCommon/d/b;

    iget-object v4, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->g:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/d/b;)V

    goto/16 :goto_a5

    .line 240
    :cond_34
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_NATIVE:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-static {p1, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z

    move-result v0

    .line 241
    iget-object v2, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/model/AdDetails;->isSmartRedirect()Z

    move-result v2

    if-eqz v2, :cond_7f

    if-nez v0, :cond_7f

    .line 242
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getTrackingClickUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/startapp/android/publish/adsCommon/d/b;

    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->g:Ljava/lang/String;

    invoke-direct {v5, v0}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->A()J

    move-result-wide v6

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->B()J

    move-result-wide v8

    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    .line 244
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->isStartappBrowserEnabled()Z

    move-result v10

    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->shouldSendRedirectHops()Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    move-object v1, p1

    .line 242
    invoke-static/range {v1 .. v12}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;JJZLjava/lang/Boolean;Z)V

    goto :goto_a5

    .line 246
    :cond_7f
    iget-object v2, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/model/AdDetails;->getTrackingClickUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/startapp/android/publish/adsCommon/d/b;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->g:Ljava/lang/String;

    invoke-direct {v6, v2}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/model/AdDetails;->isStartappBrowserEnabled()Z

    move-result v2

    if-eqz v2, :cond_9e

    if-nez v0, :cond_9e

    const/4 v7, 0x1

    goto :goto_a0

    :cond_9e
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_a0
    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;ZZ)V

    :cond_a5
    :goto_a5
    return-void
.end method

.method public sendImpression(Landroid/content/Context;)V
    .registers 7

    .line 258
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->f:Z

    const-string v1, "]"

    const/4 v2, 0x3

    const-string v3, "StartAppNativeAd"

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->f:Z

    .line 260
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    if-nez v0, :cond_11

    return-void

    .line 263
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending Impression for ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->a:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->c:Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/adsCommon/d/b;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V

    goto :goto_54

    .line 267
    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already sent impression for ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "         Title: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "         Description: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]...\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "         Rating: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getRating()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "         Installs: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getInstalls()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "         Category: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "         PackageName: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getPackacgeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "         CampaginAction: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/nativead/NativeAdDetails;->getCampaignAction()Lcom/startapp/android/publish/ads/nativead/StartAppNativeAd$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
