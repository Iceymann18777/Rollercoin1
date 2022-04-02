.class public Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BrowserWebChromeClient.java"


# static fields
.field public static final WEB_VIEW_LOG_PREFIX:Ljava/lang/String; = "webConsoleMessage"


# instance fields
.field private _webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->_webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->askForPermission(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private askForPermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 106
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1f

    .line 108
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .line 50
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "%s @ %d: %s"

    .line 143
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "webConsoleMessage"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 4

    .line 114
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    const/4 v0, 0x1

    .line 115
    invoke-interface {p2, p1, v0, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onHideCustomView()V
    .registers 2

    .line 62
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 63
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onHideCustomView()V

    return-void
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 7

    .line 121
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getWidgetName()Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$2;

    invoke-direct {v0, p0, p4}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$2;-><init>(Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;Landroid/webkit/JsResult;)V

    new-instance v1, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$3;

    invoke-direct {v1, p0, p4}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$3;-><init>(Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-static {p2, p3, p1, v0, v1}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 4

    .line 86
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient$1;-><init>(Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;Landroid/webkit/PermissionRequest;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 39
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->_webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->setProgressBarState(I)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    .line 55
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 56
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->openFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/browser/BrowserWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method
