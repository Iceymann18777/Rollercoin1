.class public Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
.super Ljava/lang/Object;
.source "ConfigPhp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aboutScreenDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "about_screen_description"
    .end annotation
.end field

.field private aboutScreenDescriptionType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "about_screen_description_type"
    .end annotation
.end field

.field private activeAdsSDK:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

.field private additionalJsCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additional_js_code"
    .end annotation
.end field

.field private adsNetworkSdk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            ">;"
        }
    .end annotation
.end field

.field private appBanActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_ban_active"
    .end annotation
.end field

.field private appsgeyserSdk:Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

.field private countOfTry:I

.field private country:Ljava/lang/String;

.field private customAboutActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_html_about_active"
    .end annotation
.end field

.field private eulaBeginning:Ljava/lang/String;

.field private fullScreenDelay:J

.field private fullscreenBannerCountToShow:I

.field private inAppPurchasesActive:Z

.field private inactivityDaysPeriod:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "period_days"
    .end annotation
.end field

.field private inactivityReminderEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "turn_on_inactivity_reminder"
    .end annotation
.end field

.field private inactivityReminderText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text_reminder"
    .end annotation
.end field

.field private isAboutScreenEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_about_screen"
    .end annotation
.end field

.field private isAdvertisingTermsDialog:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startup_confirmation_dialog"
    .end annotation
.end field

.field private isOnResumeFSEnabled:Z

.field private isOnTouchFSEnabled:Z

.field private isTakeOffFSEnabled:Z

.field private pushNotificationsActive:Z

.field private rateMyAppActive:Z

.field private rateMyAppSessionsCount:I

.field private rateMyAppThreshold:I

.field private startupELUAConfirmationDialogAllow:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startup_dialog_allowing_use_if_decline"
    .end annotation
.end field

.field private statUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp$1;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp$1;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    const-string v1, "default"

    .line 30
    iput-object v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescriptionType:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->startupELUAConfirmationDialogAllow:Z

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isTakeOffFSEnabled:Z

    .line 46
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnResumeFSEnabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnTouchFSEnabled:Z

    const-wide/16 v1, -0x1

    .line 56
    iput-wide v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullScreenDelay:J

    .line 59
    iput v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullscreenBannerCountToShow:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    const-string v1, "default"

    .line 30
    iput-object v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescriptionType:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->startupELUAConfirmationDialogAllow:Z

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isTakeOffFSEnabled:Z

    .line 46
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnResumeFSEnabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isOnTouchFSEnabled:Z

    const-wide/16 v2, -0x1

    .line 56
    iput-wide v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullScreenDelay:J

    .line 59
    iput v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullscreenBannerCountToShow:I

    .line 85
    const-class v2, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserSdk:Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAdvertisingTermsDialog:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->country:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->eulaBeginning:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_51

    const/4 v2, 0x1

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->pushNotificationsActive:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->countOfTry:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescriptionType:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescription:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6e

    const/4 v2, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v2, 0x0

    :goto_6f
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->startupELUAConfirmationDialogAllow:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_79

    const/4 v2, 0x1

    goto :goto_7a

    :cond_79
    const/4 v2, 0x0

    :goto_7a
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rateMyAppActive:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_84

    const/4 v2, 0x1

    goto :goto_85

    :cond_84
    const/4 v2, 0x0

    :goto_85
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->customAboutActive:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8f

    const/4 v2, 0x1

    goto :goto_90

    :cond_8f
    const/4 v2, 0x0

    :goto_90
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appBanActive:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_9a

    const/4 v2, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v2, 0x0

    :goto_9b
    iput-boolean v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inAppPurchasesActive:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->additionalJsCode:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_aa

    goto :goto_ab

    :cond_aa
    const/4 v0, 0x0

    :goto_ab
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderEnabled:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityDaysPeriod:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp$1;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    const/4 p0, 0x1

    .line 121
    invoke-virtual {v1, p0}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 123
    const-class p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAboutScreenDescription()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAboutScreenDescriptionType()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescriptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveAdsSDK()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->activeAdsSDK:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    return-object v0
.end method

.method public getAdditionalJsCode()Ljava/lang/String;
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->additionalJsCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsgeyserSdk()Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserSdk:Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    return-object v0
.end method

.method public getCountOfTry()I
    .registers 2

    .line 210
    iget v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->countOfTry:I

    return v0
.end method

.method public getEulaBeginning()Ljava/lang/String;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->eulaBeginning:Ljava/lang/String;

    return-object v0
.end method

.method public getFullScreenDelay()J
    .registers 3

    .line 335
    iget-wide v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->fullScreenDelay:J

    return-wide v0
.end method

.method public getInactivityDaysPeriod()I
    .registers 2

    .line 419
    iget v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityDaysPeriod:I

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0
.end method

.method public getInactivityReminderText()Ljava/lang/String;
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderText:Ljava/lang/String;

    return-object v0
.end method

.method public getRateMyAppSessionsCount()I
    .registers 2

    .line 379
    iget v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rateMyAppSessionsCount:I

    return v0
.end method

.method public getRateMyAppThreshold()I
    .registers 2

    .line 387
    iget v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rateMyAppThreshold:I

    return v0
.end method

.method public getStartupELUAConfirmationDialogAllow()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->startupELUAConfirmationDialogAllow:Z

    return v0
.end method

.method public getStatUrls()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->statUrls:Ljava/util/Map;

    return-object v0
.end method

.method public isAboutScreenEnabled()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    return v0
.end method

.method public isAdvertisingTermsDialog()Z
    .registers 2

    .line 242
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAdvertisingTermsDialog:Z

    return v0
.end method

.method public isAppBanActive()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appBanActive:Z

    return v0
.end method

.method public isCustomAboutActive()Z
    .registers 2

    .line 395
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->customAboutActive:Z

    return v0
.end method

.method public isInAppPurchasesActive()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inAppPurchasesActive:Z

    return v0
.end method

.method public isInactivityReminderEnabled()Z
    .registers 2

    .line 411
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderEnabled:Z

    return v0
.end method

.method public isOfferWallEnabled()Z
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->adsNetworkSdk:Ljava/util/Map;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 303
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->adsNetworkSdk:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    .line 304
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method public isPushNotificationsActive()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->pushNotificationsActive:Z

    return v0
.end method

.method public isRateMyAppActive()Z
    .registers 2

    .line 371
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rateMyAppActive:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appsgeyserSdk:Lcom/appsgeyser/sdk/configuration/models/ConfigPhpSdkModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 273
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 274
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAdvertisingTermsDialog:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 275
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->eulaBeginning:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->pushNotificationsActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 278
    iget p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->countOfTry:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescriptionType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->aboutScreenDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->startupELUAConfirmationDialogAllow:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 282
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->rateMyAppActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 283
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->customAboutActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 284
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->appBanActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 285
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inAppPurchasesActive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 286
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->additionalJsCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-boolean p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 288
    iget p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityDaysPeriod:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object p2, p0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->inactivityReminderText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
