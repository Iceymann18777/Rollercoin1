.class public Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
.super Ljava/lang/Object;
.source "WebWidgetConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;,
        Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;,
        Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;,
        Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;,
        Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;,
        Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;,
        Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;,
        Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;
    }
.end annotation


# instance fields
.field private acceptCookie:Z

.field private addUsageUrl:Ljava/lang/String;

.field private affiliateGetString:Ljava/lang/String;

.field private appGuid:Ljava/lang/String;

.field private appMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

.field private appTheme:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

.field private applicationId:I

.field private downloadAction:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

.field private fullScreenBannerEnabled:Z

.field private httpAccessLogin:Ljava/lang/String;

.field private httpAccessPassword:Ljava/lang/String;

.field private isAboutScreenEnabled:Z

.field private isRedirectEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

.field private isSplashScreenEnabled:Z

.field private locationUrl:Ljava/lang/String;

.field private onExitFullScreenBannerEnabled:Z

.field private preventFromSleep:Z

.field private publisherName:Ljava/lang/String;

.field private pushAccount:Ljava/lang/String;

.field private rateItemVisibility:Z

.field private registeredUrl:Ljava/lang/String;

.field private shareExtraLink:Ljava/lang/String;

.field private showAboutMenuItem:Z

.field private showDownloadList:Z

.field private showExitMenuItem:Z

.field private showInAppMenuItem:Z

.field private showRefreshMenuItem:Z

.field private showSearchNotice:Z

.field private showSettings:Z

.field private showShareMenuItem:Z

.field private showStartupConfirmationDialog:Z

.field private splashScreenImage:Ljava/lang/String;

.field private tabsEnabledHide:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;

.field private tabsPosition:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

.field private urlBarHide:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

.field private urlBarMenuButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;",
            ">;"
        }
    .end annotation
.end field

.field private urlBarStyle:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;

.field private urlOverlayEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

.field private widgetName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->appMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    .line 31
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->appTheme:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    .line 32
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->TOP:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->tabsPosition:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    .line 33
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->tabsEnabledHide:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->rateItemVisibility:Z

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->acceptCookie:Z

    const-string v2, ""

    .line 36
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->affiliateGetString:Ljava/lang/String;

    .line 37
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showSearchNotice:Z

    .line 38
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->fullScreenBannerEnabled:Z

    .line 39
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->onExitFullScreenBannerEnabled:Z

    .line 40
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->publisherName:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->appGuid:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->pushAccount:Ljava/lang/String;

    .line 43
    sget-object v3, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_ALL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    iput-object v3, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->isRedirectEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    .line 44
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->isAboutScreenEnabled:Z

    .line 46
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->shareExtraLink:Ljava/lang/String;

    .line 48
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showStartupConfirmationDialog:Z

    .line 50
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->isSplashScreenEnabled:Z

    .line 52
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->downloadAction:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    .line 54
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->splashScreenImage:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->urlBarMenuButtons:Ljava/util/ArrayList;

    .line 114
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->urlOverlayEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    .line 132
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;->BOTTOM:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->urlBarStyle:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;

    .line 133
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->urlBarHide:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    return-void
.end method


# virtual methods
.method public addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->urlBarMenuButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAffiliateString()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->affiliateGetString:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()I
    .registers 2

    .line 179
    iget v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->applicationId:I

    return v0
.end method

.method public getApplicationMode()Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->appMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    return-object v0
.end method

.method public getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->appTheme:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    return-object v0
.end method

.method public getDownloadAction()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->downloadAction:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    return-object v0
.end method

.method public getHttpAccessLogin()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->httpAccessLogin:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpAccessPassword()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->httpAccessPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRedirectEnabled()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->isRedirectEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    return-object v0
.end method

.method public getPreventFromSleep()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->preventFromSleep:Z

    return v0
.end method

.method public getRateItemVisibility()Z
    .registers 2

    .line 292
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->rateItemVisibility:Z

    return v0
.end method

.method public getShareExtraLink()Ljava/lang/String;
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->shareExtraLink:Ljava/lang/String;

    return-object v0
.end method

.method public getShowDownloadList()Z
    .registers 2

    .line 411
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showDownloadList:Z

    return v0
.end method

.method public getShowExitMenuItem()Z
    .registers 2

    .line 356
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showExitMenuItem:Z

    return v0
.end method

.method public getShowRefreshMenuItem()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showRefreshMenuItem:Z

    return v0
.end method

.method public getShowSearchNotice()Z
    .registers 2

    .line 435
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showSearchNotice:Z

    return v0
.end method

.method public getShowSettings()Z
    .registers 2

    .line 419
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showSettings:Z

    return v0
.end method

.method public getShowShareMenuItem()Z
    .registers 2

    .line 332
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showShareMenuItem:Z

    return v0
.end method

.method public getSplashScreenImage()Ljava/lang/String;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->splashScreenImage:Ljava/lang/String;

    return-object v0
.end method

.method public getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->tabsPosition:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    return-object v0
.end method

.method public getUrlBarMenuButtons()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->urlBarMenuButtons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUrlBarStyle()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->urlBarStyle:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;

    return-object v0
.end method

.method public getUrlOverlayState()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->urlOverlayEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    return-object v0
.end method

.method public getWidgetName()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->widgetName:Ljava/lang/String;

    return-object v0
.end method

.method public isSplashScreenEnabled()Z
    .registers 2

    .line 370
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->isSplashScreenEnabled:Z

    return v0
.end method

.method public setAcceptCookie(Z)V
    .registers 2

    .line 304
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->acceptCookie:Z

    return-void
.end method

.method public setAddUsageUrl(Ljava/lang/String;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUsageUrl:Ljava/lang/String;

    return-void
.end method

.method public setAffiliateString(Ljava/lang/String;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->affiliateGetString:Ljava/lang/String;

    return-void
.end method

.method public setApplicationId(I)V
    .registers 2

    .line 187
    iput p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->applicationId:I

    return-void
.end method

.method public setApplicationMode(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->appMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    return-void
.end method

.method public setApplicationTheme(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;)V
    .registers 2

    .line 288
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->appTheme:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    return-void
.end method

.method public setDownloadAction(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->downloadAction:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    return-void
.end method

.method public setFullscreenBannerEnabled(Z)V
    .registers 2

    .line 312
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->fullScreenBannerEnabled:Z

    return-void
.end method

.method public setHttpAccessLogin(Ljava/lang/String;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->httpAccessLogin:Ljava/lang/String;

    return-void
.end method

.method public setHttpAccessPassword(Ljava/lang/String;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->httpAccessPassword:Ljava/lang/String;

    return-void
.end method

.method public setIsAboutScreenEnabled(Z)V
    .registers 2

    .line 219
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->isAboutScreenEnabled:Z

    return-void
.end method

.method public setIsRedirectEnabled(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->isRedirectEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    return-void
.end method

.method public setLocationUrl(Ljava/lang/String;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->locationUrl:Ljava/lang/String;

    return-void
.end method

.method public setOnExitFullscreenBannerEnabled(Z)V
    .registers 2

    .line 320
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->onExitFullScreenBannerEnabled:Z

    return-void
.end method

.method public setPreventFromSleep(Z)V
    .registers 2

    .line 272
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->preventFromSleep:Z

    return-void
.end method

.method public setPublisherName(Ljava/lang/String;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->publisherName:Ljava/lang/String;

    return-void
.end method

.method public setRateItemVisibility(Z)V
    .registers 2

    .line 296
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->rateItemVisibility:Z

    return-void
.end method

.method public setRegisteredUrl(Ljava/lang/String;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->registeredUrl:Ljava/lang/String;

    return-void
.end method

.method public setShareExtraLink(Ljava/lang/String;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->shareExtraLink:Ljava/lang/String;

    return-void
.end method

.method public setShowAboutMenuItem(Z)V
    .registers 2

    .line 344
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showAboutMenuItem:Z

    return-void
.end method

.method public setShowDownloadList(Z)V
    .registers 2

    .line 415
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showDownloadList:Z

    return-void
.end method

.method public setShowExitMenuItem(Z)V
    .registers 2

    .line 360
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showExitMenuItem:Z

    return-void
.end method

.method public setShowInAppMenuItem(Z)V
    .registers 2

    .line 352
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showInAppMenuItem:Z

    return-void
.end method

.method public setShowRefreshMenuItem(Z)V
    .registers 2

    .line 207
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showRefreshMenuItem:Z

    return-void
.end method

.method public setShowSearchNotice(Z)V
    .registers 2

    .line 439
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showSearchNotice:Z

    return-void
.end method

.method public setShowSettings(Z)V
    .registers 2

    .line 423
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showSettings:Z

    return-void
.end method

.method public setShowShareMenuItem(Z)V
    .registers 2

    .line 336
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showShareMenuItem:Z

    return-void
.end method

.method public setShowStartupConfirmationDialog(Z)V
    .registers 2

    .line 386
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->showStartupConfirmationDialog:Z

    return-void
.end method

.method public setSplashScreen(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->isSplashScreenEnabled:Z

    .line 366
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->splashScreenImage:Ljava/lang/String;

    return-void
.end method

.method public setTabsEnabledHide(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->tabsEnabledHide:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;

    return-void
.end method

.method public setTabsPosition(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;)V
    .registers 2

    .line 407
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->tabsPosition:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    return-void
.end method

.method public setUrlBarHide(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->urlBarHide:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    return-void
.end method

.method public setUrlBarStyle(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->urlBarStyle:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;

    return-void
.end method

.method public setUrlOverlayState(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->urlOverlayEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    return-void
.end method

.method public setWidgetName(Ljava/lang/String;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->widgetName:Ljava/lang/String;

    return-void
.end method
