.class public Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;
.super Ljava/lang/Object;
.source "JavaScriptInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;
    }
.end annotation


# instance fields
.field private final INJECT_TRIES_INTERVAL:J

.field public final JS_INJECTION_PREFIX:Ljava/lang/String;

.field public final JS_INJECTION_SUFFIX:Ljava/lang/String;

.field private _handler:Landroid/os/Handler;

.field private final _webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

.field private final _webView:Landroid/webkit/WebView;

.field private final injectContentRunnable:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "javascript:(function(){ "

    .line 12
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->JS_INJECTION_PREFIX:Ljava/lang/String;

    const-string v0, " })()"

    .line 13
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->JS_INJECTION_SUFFIX:Ljava/lang/String;

    const-wide/16 v0, 0xc8

    .line 14
    iput-wide v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->INJECT_TRIES_INTERVAL:J

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->_handler:Landroid/os/Handler;

    .line 23
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$1;-><init>(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->injectContentRunnable:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;

    .line 45
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->_webView:Landroid/webkit/WebView;

    .line 46
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    const-string p2, "AppsgeyserJSInjectorInterface"

    .line 47
    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)Landroid/webkit/WebView;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->_webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)Lcom/appsgeyser/multiTabApp/controllers/WebContentController;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->_webContentController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;)Landroid/os/Handler;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->_handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public InjectJavaScript()V
    .registers 1

    return-void
.end method

.method public injectedSuccessfully()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->injectContentRunnable:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->injectContentRunnable:Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector$StoppableRunnable;->stop:Z

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/JavaScriptInjector;->_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
