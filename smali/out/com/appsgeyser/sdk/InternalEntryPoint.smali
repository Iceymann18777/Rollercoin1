.class public final Lcom/appsgeyser/sdk/InternalEntryPoint;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/appsgeyser/sdk/InternalEntryPoint;


# instance fields
.field private aboutDialogEnabledListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;

.field private additionalJsCode:Ljava/lang/String;

.field private advertisingTermsDialog:Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

.field private afterConsentRequestCompletedListener:Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;

.field private application:Landroid/app/Application;

.field private configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

.field private customHtmlAbout:Z

.field private doneDeviceParser:Z

.field private enablePull:Z

.field private idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

.field private inAppPurchasesEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;

.field private isApplicationVisible:Z

.field private isConsentRequestProcessActive:Z

.field private isConsentRequestProcessCompleted:Z

.field private networkAvailableListener:Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

.field private networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

.field private saveDialogEnableListener:Z

.field private saveInAppPurchasesEnableListener:Z

.field private selectedRating:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint;->INSTANCE:Lcom/appsgeyser/sdk/InternalEntryPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->enablePull:Z

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isApplicationVisible:Z

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->additionalJsCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->advertisingTermsDialog:Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z

    return p0
.end method

.method static synthetic access$102(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z

    return p1
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->aboutDialogEnabledListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveInAppPurchasesEnableListener:Z

    return p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->inAppPurchasesEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->customHtmlAbout:Z

    return p1
.end method

.method static synthetic access$602(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    return-object p1
.end method

.method private checkPermissions(Landroid/app/Activity;)Z
    .registers 3

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 147
    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "android.permission.INTERNET"

    .line 148
    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x1

    return p1

    .line 149
    :cond_13
    :goto_13
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid permission. You have to grant ACCESS_NETWORK_STATE and INTERNET permissions to work properly"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-static {p1}, Lcom/appsgeyser/sdk/ExceptionHandler;->handleException(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;
    .registers 1

    .line 67
    sget-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint;->INSTANCE:Lcom/appsgeyser/sdk/InternalEntryPoint;

    return-object v0
.end method

.method private init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 103
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    .line 104
    invoke-virtual {v0, p2}, Lcom/appsgeyser/sdk/configuration/Configuration;->setTemplateVersion(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->loadConfiguration()V

    .line 107
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1d
    const-string v0, ""

    .line 109
    :goto_1f
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 111
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->clearApplicationSettings()V

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0, p3}, Lcom/appsgeyser/sdk/configuration/Configuration;->setApplicationId(Ljava/lang/String;)V

    .line 113
    iget-object p3, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {p3, p4, p2}, Lcom/appsgeyser/sdk/configuration/Configuration;->setMetricaOnStartEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_34
    invoke-static {p1}, Lcom/appsgeyser/sdk/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/analytics/Analytics;

    move-result-object p2

    .line 117
    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/analytics/Analytics;->activityStarted(Landroid/content/Context;)V

    .line 120
    new-instance p2, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    invoke-direct {p2, p1}, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->advertisingTermsDialog:Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    .line 122
    iget-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    if-nez p2, :cond_4c

    .line 123
    invoke-static {p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->createAndRegisterNetworkReceiver(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    move-result-object p2

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    .line 126
    :cond_4c
    iget-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->createNetworkAvailableListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkAvailableListener:Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    .line 128
    iget-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->addListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V

    return-void
.end method


# virtual methods
.method checkIsOfferWallEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V
    .registers 6

    .line 364
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v0, :cond_13

    .line 365
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v2, Lcom/appsgeyser/sdk/InternalEntryPoint$4;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint$4;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V

    .line 366
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    goto :goto_1f

    .line 373
    :cond_13
    invoke-static {}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getInstance()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/InternalEntryPoint$5;

    invoke-direct {v1, p0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint$5;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->rescan(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;)V

    :goto_1f
    return-void
.end method

.method public getAdditionalJsCode()Ljava/lang/String;
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->additionalJsCode:Ljava/lang/String;

    return-object v0
.end method

.method getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
    .registers 2

    .line 395
    invoke-static {}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    return-object v0
.end method

.method getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V
    .registers 6

    .line 262
    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->aboutDialogEnabledListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;

    .line 263
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v0, :cond_15

    .line 264
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v2, Lcom/appsgeyser/sdk/InternalEntryPoint$3;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint$3;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    .line 265
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    goto :goto_40

    .line 273
    :cond_15
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    move-result-object p1

    const-string v0, "ServerResponse"

    const-string v1, ""

    .line 275
    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3e

    .line 278
    :try_start_2c
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;->onDialogEnableReceived(Z)V

    const/4 p1, 0x0

    .line 280
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z
    :try_end_3a
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2c .. :try_end_3a} :catch_3b

    goto :goto_40

    .line 282
    :catch_3b
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z

    goto :goto_40

    .line 285
    :cond_3e
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z

    :goto_40
    return-void
.end method

.method getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;)V
    .registers 6

    .line 291
    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->inAppPurchasesEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;

    .line 292
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v0, :cond_15

    .line 293
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v2, Lcom/appsgeyser/sdk/-$$Lambda$InternalEntryPoint$9nQi4Gsm8jJHX4230hnI4TSInbc;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/sdk/-$$Lambda$InternalEntryPoint$9nQi4Gsm8jJHX4230hnI4TSInbc;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;)V

    .line 294
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    goto :goto_4f

    .line 300
    :cond_15
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    move-result-object p1

    const-string v0, "ServerResponse"

    const-string v1, ""

    .line 302
    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4d

    .line 305
    :try_start_2c
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInAppPurchasesActive()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_43

    .line 307
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->isDisableAdsPurchaseButtonHidden()Z

    move-result p1

    if-nez p1, :cond_43

    const/4 p1, 0x1

    goto :goto_44

    :cond_43
    const/4 p1, 0x0

    .line 306
    :goto_44
    invoke-interface {p2, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;->onInAppPurchasesEnableReceived(Z)V

    .line 308
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveInAppPurchasesEnableListener:Z
    :try_end_49
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2c .. :try_end_49} :catch_4a

    goto :goto_4f

    .line 310
    :catch_4a
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveInAppPurchasesEnableListener:Z

    goto :goto_4f

    .line 313
    :cond_4d
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveInAppPurchasesEnableListener:Z

    :goto_4f
    return-void
.end method

.method public getSelectedRating()F
    .registers 2

    .line 446
    iget v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->selectedRating:F

    return v0
.end method

.method public isConsentRequestProcessActive()Z
    .registers 2

    .line 415
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessActive:Z

    return v0
.end method

.method public synthetic lambda$getNewConfigPhp$0$InternalEntryPoint(Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 4

    .line 295
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInAppPurchasesActive()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_13

    .line 296
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->isDisableAdsPurchaseButtonHidden()Z

    move-result p2

    if-nez p2, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    .line 295
    :goto_14
    invoke-interface {p1, p2}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppPurchasesEnableListener;->onInAppPurchasesEnableReceived(Z)V

    .line 297
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveInAppPurchasesEnableListener:Z

    return-void
.end method

.method launchDisableAdsBillingFlow(Landroid/app/Activity;)V
    .registers 3

    .line 258
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->launchDisableAdsBillingFlow(Landroid/app/Activity;)V

    return-void
.end method

.method public onDeviceIdParametersObtained(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
    .registers 5

    .line 201
    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    .line 202
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object p2

    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v1, Lcom/appsgeyser/sdk/InternalEntryPoint$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint$1;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    return-void
.end method

.method onPause(Landroid/content/Context;)V
    .registers 3

    .line 158
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_a

    .line 159
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 160
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 163
    :cond_a
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    if-eqz v0, :cond_11

    .line 165
    :try_start_e
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_11} :catch_11

    .line 171
    :catch_11
    :cond_11
    invoke-static {}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->onPause()V

    .line 173
    sget-object p1, Lcom/appsgeyser/sdk/InternalEntryPoint;->INSTANCE:Lcom/appsgeyser/sdk/InternalEntryPoint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setApplicationVisible(Z)V

    return-void
.end method

.method onResume(Landroid/content/Context;)V
    .registers 4

    .line 178
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_a

    .line 179
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 180
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 183
    :cond_a
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    .line 185
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    if-nez v0, :cond_26

    .line 186
    invoke-static {p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->createAndRegisterNetworkReceiver(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    .line 187
    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->createNetworkAvailableListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkAvailableListener:Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    .line 188
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    invoke-virtual {v1, v0}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->addListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V

    goto :goto_32

    .line 190
    :cond_26
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    :goto_32
    invoke-static {}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->onResume(Landroid/content/Context;)V

    .line 196
    sget-object p1, Lcom/appsgeyser/sdk/InternalEntryPoint;->INSTANCE:Lcom/appsgeyser/sdk/InternalEntryPoint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setApplicationVisible(Z)V

    return-void
.end method

.method public retryParsers(Landroid/content/Context;)V
    .registers 3

    .line 132
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->doneDeviceParser:Z

    if-nez v0, :cond_e

    .line 133
    invoke-static {}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getInstance()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->rescan(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;)V

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->doneDeviceParser:Z

    :cond_e
    return-void
.end method

.method public setAdditionalJsCode(Ljava/lang/String;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->additionalJsCode:Ljava/lang/String;

    return-void
.end method

.method public setApplication(Landroid/app/Application;)V
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->application:Landroid/app/Application;

    return-void
.end method

.method public setApplicationVisible(Z)V
    .registers 2

    .line 411
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isApplicationVisible:Z

    return-void
.end method

.method public setConsentRequestProcessActive(Z)V
    .registers 3

    .line 431
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessCompleted:Z

    if-nez v0, :cond_16

    .line 432
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessActive:Z

    if-nez p1, :cond_19

    const/4 p1, 0x1

    .line 434
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessCompleted:Z

    .line 435
    iget-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->afterConsentRequestCompletedListener:Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;

    if-eqz p1, :cond_19

    .line 436
    invoke-interface {p1}, Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;->onConsentRequestCompleted()V

    const/4 p1, 0x0

    .line 437
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->afterConsentRequestCompletedListener:Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;

    goto :goto_19

    :cond_16
    const/4 p1, 0x0

    .line 441
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessActive:Z

    :cond_19
    :goto_19
    return-void
.end method

.method public setSelectedRating(F)V
    .registers 2

    .line 450
    iput p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->selectedRating:F

    return-void
.end method

.method showAboutDialog(Landroid/app/Activity;)V
    .registers 7

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v1, :cond_1f

    .line 225
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v3, Lcom/appsgeyser/sdk/InternalEntryPoint$2;

    invoke-direct {v3, p0, v0}, Lcom/appsgeyser/sdk/InternalEntryPoint$2;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Landroid/content/Intent;)V

    .line 226
    invoke-virtual {v1, p1, v2, v3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    goto :goto_4a

    .line 234
    :cond_1f
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    move-result-object v1

    const-string v2, "ServerResponse"

    const-string v3, ""

    .line 236
    invoke-virtual {v1, v2, v3}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "config_php_key"

    if-nez v2, :cond_47

    .line 239
    :try_start_37
    invoke-static {v1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 241
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isCustomAboutActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->customHtmlAbout:Z
    :try_end_44
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_37 .. :try_end_44} :catch_45

    goto :goto_4a

    :catch_45
    nop

    goto :goto_4a

    .line 247
    :cond_47
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :goto_4a
    iget-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->customHtmlAbout:Z

    if-nez v1, :cond_52

    .line 251
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_56

    :cond_52
    const/4 v0, 0x1

    .line 253
    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->startPausedContentInfoActivity(Landroid/content/Context;Z)V

    :goto_56
    return-void
.end method

.method takeOff(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 75
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 79
    :cond_d
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/appsgeyser/sdk/InternalEntryPoint;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "34e75064-5ba5-4fac-b092-dc10aa167be0"

    .line 81
    invoke-static {p1, p2}, Lcom/yandex/metrica/YandexMetrica;->activate(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/yandex/metrica/YandexMetrica;->enableActivityAutoTracking(Landroid/app/Application;)V

    .line 85
    :try_start_1c
    iget-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/Configuration;->getMetricaOnStartEvent()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2e

    const-string p3, "on_start_event"

    .line 87
    invoke-static {p3, p2}, Lcom/yandex/metrica/YandexMetrica;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p2

    .line 90
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    :cond_2e
    :goto_2e
    invoke-static {p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 95
    invoke-static {}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getInstance()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->rescan(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;)V

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->doneDeviceParser:Z

    :cond_3e
    return-void
.end method
