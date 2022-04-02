.class public abstract Lcom/mopub/common/AdUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "AdUrlGenerator.java"


# static fields
.field private static final ADVANCED_BIDDING_TOKENS_KEY:Ljava/lang/String; = "abt"

.field private static final BACKOFF_REASON_KEY:Ljava/lang/String; = "backoff_reason"

.field private static final BACKOFF_TIME_MS_KEY:Ljava/lang/String; = "backoff_ms"

.field private static final CARRIER_NAME_KEY:Ljava/lang/String; = "cn"

.field private static final CARRIER_TYPE_KEY:Ljava/lang/String; = "ct"

.field private static final COUNTRY_CODE_KEY:Ljava/lang/String; = "iso"

.field private static final IS_MRAID_KEY:Ljava/lang/String; = "mr"

.field private static final KEYWORDS_KEY:Ljava/lang/String; = "q"

.field private static final LAT_LONG_ACCURACY_KEY:Ljava/lang/String; = "lla"

.field private static final LAT_LONG_FRESHNESS_KEY:Ljava/lang/String; = "llf"

.field private static final LAT_LONG_FROM_SDK_KEY:Ljava/lang/String; = "llsdk"

.field private static final LAT_LONG_KEY:Ljava/lang/String; = "ll"

.field private static final MOBILE_COUNTRY_CODE_KEY:Ljava/lang/String; = "mcc"

.field private static final MOBILE_NETWORK_CODE_KEY:Ljava/lang/String; = "mnc"

.field private static final ORIENTATION_KEY:Ljava/lang/String; = "o"

.field private static final SCREEN_SCALE_KEY:Ljava/lang/String; = "sc"

.field private static final TIMEZONE_OFFSET_KEY:Ljava/lang/String; = "z"

.field private static final USER_DATA_KEYWORDS_KEY:Ljava/lang/String; = "user_data_q"

.field private static final VIEWABILITY_KEY:Ljava/lang/String; = "vv"


# instance fields
.field protected mAdUnitId:Ljava/lang/String;

.field private final mConsentData:Lcom/mopub/common/privacy/ConsentData;

.field protected mContext:Landroid/content/Context;

.field protected mKeywords:Ljava/lang/String;

.field private final mPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

.field protected mRequestedAdSize:Landroid/graphics/Point;

.field protected mUserDataKeywords:Ljava/lang/String;

.field protected mWindowInsets:Landroid/view/WindowInsets;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 140
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-nez p1, :cond_11

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mConsentData:Lcom/mopub/common/privacy/ConsentData;

    goto :goto_17

    .line 146
    :cond_11
    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->getConsentData()Lcom/mopub/common/privacy/ConsentData;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mConsentData:Lcom/mopub/common/privacy/ConsentData;

    :goto_17
    return-void
.end method

.method private addParam(Ljava/lang/String;Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V
    .registers 3

    .line 357
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addRequestRateParameters()V
    .registers 4

    .line 372
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->getInstance()Lcom/mopub/network/RequestRateTracker;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/mopub/common/AdUrlGenerator;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/network/RequestRateTracker;->getRecordForAdUnit(Ljava/lang/String;)Lcom/mopub/network/RequestRateTracker$TimeRecord;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 374
    iget v1, v0, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockIntervalMs:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_12

    goto :goto_24

    .line 378
    :cond_12
    iget v1, v0, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockIntervalMs:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "backoff_ms"

    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, v0, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mReason:Ljava/lang/String;

    const-string v1, "backoff_reason"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method

.method private static calculateLocationStalenessInMilliseconds(Landroid/location/Location;)I
    .registers 5

    .line 365
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 366
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int p0, v2

    return p0
.end method

.method private mncPortionLength(Ljava/lang/String;)I
    .registers 3

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected addBaseParams(Lcom/mopub/common/ClientMetadata;)V
    .registers 5

    .line 305
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setAdUnitId(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setSdkVersion(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->appendAppEngineInfo()V

    .line 309
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->appendWrapperVersion()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 311
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 312
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 310
    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setDeviceInfo([Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setBundleId(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mKeywords:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setKeywords(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 318
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mUserDataKeywords:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setUserDataKeywords(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->setLocation()V

    .line 322
    :cond_47
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setTimezone(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getOrientationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setOrientation(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceDimensions()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/common/AdUrlGenerator;->mRequestedAdSize:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/mopub/common/AdUrlGenerator;->mWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mopub/common/AdUrlGenerator;->setDeviceDimensions(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/view/WindowInsets;)V

    .line 326
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setDensity(F)V

    .line 328
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setMccCode(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setMncCode(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setIsoCountryCode(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setCarrierName(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setNetworkType(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    .line 337
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->setAppVersion(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->setAdvancedBiddingTokens()V

    .line 341
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->appendAdvertisingInfoTemplates()V

    .line 343
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->setGdprApplies()V

    .line 345
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->setForceGdprApplies()V

    .line 347
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->setCurrentConsentStatus()V

    .line 349
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->setConsentedPrivacyPolicyVersion()V

    .line 351
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->setConsentedVendorListVersion()V

    .line 353
    invoke-direct {p0}, Lcom/mopub/common/AdUrlGenerator;->addRequestRateParameters()V

    return-void
.end method

.method protected enableViewability(Ljava/lang/String;)V
    .registers 3

    .line 262
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "vv"

    .line 264
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setAdUnitId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "id"

    .line 176
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setAdvancedBiddingTokens()V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/MoPub;->getAdvancedBiddingTokensJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "abt"

    .line 269
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setBundleId(Ljava/lang/String;)V
    .registers 3

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "bundle"

    .line 257
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method protected setCarrierName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "cn"

    .line 248
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setConsentedPrivacyPolicyVersion()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mConsentData:Lcom/mopub/common/privacy/ConsentData;

    if-eqz v0, :cond_d

    .line 294
    invoke-interface {v0}, Lcom/mopub/common/privacy/ConsentData;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "consented_privacy_policy_version"

    .line 293
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected setConsentedVendorListVersion()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mConsentData:Lcom/mopub/common/privacy/ConsentData;

    if-eqz v0, :cond_d

    .line 300
    invoke-interface {v0}, Lcom/mopub/common/privacy/ConsentData;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "consented_vendor_list_version"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected setCurrentConsentStatus()V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-eqz v0, :cond_11

    .line 286
    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "current_consent_status"

    .line 286
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method protected setDensity(F)V
    .registers 4

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sc"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setForceGdprApplies()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mConsentData:Lcom/mopub/common/privacy/ConsentData;

    if-eqz v0, :cond_11

    .line 280
    invoke-interface {v0}, Lcom/mopub/common/privacy/ConsentData;->isForceGdprApplies()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "force_gdpr_applies"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_11
    return-void
.end method

.method protected setGdprApplies()V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-eqz v0, :cond_d

    .line 274
    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "gdpr_applies"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_d
    return-void
.end method

.method protected setIsoCountryCode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "iso"

    .line 244
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setKeywords(Ljava/lang/String;)V
    .registers 3

    const-string v0, "q"

    .line 184
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setLocation()V
    .registers 5

    .line 195
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ll"

    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lla"

    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {v0}, Lcom/mopub/common/AdUrlGenerator;->calculateLocationStalenessInMilliseconds(Landroid/location/Location;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "llf"

    .line 204
    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "llsdk"

    const-string v1, "1"

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    return-void
.end method

.method protected setMccCode(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_e

    :cond_5
    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->mncPortionLength(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_e
    const-string v0, "mcc"

    .line 232
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setMncCode(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_d

    .line 239
    :cond_5
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->mncPortionLength(Ljava/lang/String;)I

    move-result v0

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_d
    const-string v0, "mnc"

    .line 240
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setMraidFlag(Z)V
    .registers 3

    if-eqz p1, :cond_9

    const-string p1, "mr"

    const-string v0, "1"

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected setNetworkType(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V
    .registers 3

    const-string v0, "ct"

    .line 252
    invoke-direct {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    return-void
.end method

.method protected setOrientation(Ljava/lang/String;)V
    .registers 3

    const-string v0, "o"

    .line 215
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setSdkVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "nv"

    .line 180
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setTimezone(Ljava/lang/String;)V
    .registers 3

    const-string v0, "z"

    .line 211
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setUserDataKeywords(Ljava/lang/String;)V
    .registers 3

    .line 188
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "user_data_q"

    .line 191
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mAdUnitId:Ljava/lang/String;

    return-object p0
.end method

.method public withFacebookSupported(Z)Lcom/mopub/common/AdUrlGenerator;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public withRequestedAdSize(Landroid/graphics/Point;)Lcom/mopub/common/AdUrlGenerator;
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mRequestedAdSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mUserDataKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public withWindowInsets(Landroid/view/WindowInsets;)Lcom/mopub/common/AdUrlGenerator;
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mWindowInsets:Landroid/view/WindowInsets;

    return-object p0
.end method
