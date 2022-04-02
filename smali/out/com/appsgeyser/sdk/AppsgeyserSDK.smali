.class public final Lcom/appsgeyser/sdk/AppsgeyserSDK;
.super Ljava/lang/Object;
.source "AppsgeyserSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;,
        Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;,
        Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;
    }
.end annotation


# direct methods
.method public static areInAppPurchasesEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;)V
    .registers 3

    .line 54
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;)V

    return-void
.end method

.method public static getAdditionalJsCode()Ljava/lang/String;
    .registers 1

    .line 82
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getAdditionalJsCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
    .registers 1

    .line 26
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    return-object v0
.end method

.method public static isAboutDialogEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V
    .registers 3

    .line 50
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    return-void
.end method

.method public static isOfferWallEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V
    .registers 3

    .line 58
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->checkIsOfferWallEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V

    return-void
.end method

.method public static launchDisableAdsBillingFlow(Landroid/app/Activity;)V
    .registers 2

    .line 46
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->launchDisableAdsBillingFlow(Landroid/app/Activity;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public static setApplicationInstance(Landroid/app/Application;)V
    .registers 2

    .line 67
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setApplication(Landroid/app/Application;)V

    return-void
.end method

.method public static showAboutDialog(Landroid/app/Activity;)V
    .registers 2

    .line 42
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->showAboutDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public static takeOff(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 17
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/appsgeyser/sdk/InternalEntryPoint;->takeOff(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
