.class public Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;
.super Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;
.source "BrowserWebViewClient.java"


# instance fields
.field private _isRedirectEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

.field private _javaScriptInjector:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

.field private _mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field private _webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;Landroid/webkit/WebView;)V
    .registers 4

    .line 39
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_javaScriptInjector:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    .line 36
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->NO_REDIRECT:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_isRedirectEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    .line 40
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 41
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    .line 43
    invoke-static {}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->getInstance()Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->addUrl(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getIsRedirectEnabled()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_isRedirectEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    .line 47
    new-instance p1, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-direct {p1, p2, v0}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;-><init>(Landroid/webkit/WebView;Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_javaScriptInjector:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    .line 48
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 4

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 126
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 128
    invoke-interface {p1, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->setUrl(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    .line 53
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 55
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-virtual {v0, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getInjectJSContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function(){ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " })()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getBannerInjectionJs()Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getAdditionalJsCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 66
    :cond_54
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 67
    invoke-super {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_isRedirectEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_ALL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    if-ne v0, v1, :cond_90

    .line 70
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 72
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 73
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 75
    invoke-interface {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 79
    :cond_90
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    sget-object p2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->WEB_PAGES_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    .line 85
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 87
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_isRedirectEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->NO_REDIRECT:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_19

    invoke-static {}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->getInstance()Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->isDefaultUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_19
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_isRedirectEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_EXTERNAL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    if-ne v0, v2, :cond_65

    .line 88
    invoke-static {}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->getInstance()Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/appsgeyser/multiTabApp/configuration/DefaultUrlsHolder;->isPermittedDomain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 90
    :cond_29
    :try_start_29
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 91
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 92
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 93
    invoke-virtual {p1, p3, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_a0

    .line 95
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_29 .. :try_end_48} :catch_49

    goto :goto_a0

    :catch_49
    move-exception p1

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageStarted() :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ANFE"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 101
    :cond_65
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 102
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->showProgressBarPanel()V

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 106
    invoke-interface {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->onPageStart(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_7c
    const-string v0, "file:///android_asset/content"

    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 109
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 112
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 114
    :cond_91
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->setPageRefreshJsCode(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_javaScriptInjector:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->InjectJavaScript()V

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 119
    :cond_a0
    :goto_a0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    sget-object p2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->WEB_PAGES_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    invoke-virtual {p1, p2, v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 133
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_isRedirectEnabled:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_ALL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    if-ne p2, p3, :cond_2f

    .line 136
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object p2

    if-eqz p2, :cond_2f

    .line 138
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabType()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2f

    .line 139
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    :cond_2f
    if-eqz p1, :cond_35

    .line 143
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :cond_35
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 165
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    .line 168
    invoke-virtual {p1, p3, p4}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 169
    array-length v0, p1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    const/4 v0, 0x0

    .line 170
    aget-object v1, p1, v0

    const/4 v0, 0x1

    .line 171
    aget-object p1, p1, v0

    goto :goto_1b

    :cond_1a
    move-object p1, v1

    :goto_1b
    if-eqz v1, :cond_23

    if-eqz p1, :cond_23

    .line 176
    invoke-virtual {p2, v1, p1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 178
    :cond_23
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v10}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showHttpAuthentication(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_35
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    .line 150
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebViewClient;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;->execute(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method
