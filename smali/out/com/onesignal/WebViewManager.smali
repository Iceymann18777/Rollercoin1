.class Lcom/onesignal/WebViewManager;
.super Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;
.source "WebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/WebViewManager$OSJavaScriptInterface;,
        Lcom/onesignal/WebViewManager$OneSignalGenericCallback;,
        Lcom/onesignal/WebViewManager$Position;
    }
.end annotation


# static fields
.field private static final MARGIN_PX_SIZE:I

.field private static final TAG:Ljava/lang/String;

.field protected static lastInstance:Lcom/onesignal/WebViewManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private firstShow:Z

.field private message:Lcom/onesignal/OSInAppMessage;

.field private messageView:Lcom/onesignal/InAppMessageView;

.field private webView:Lcom/onesignal/OSWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/onesignal/WebViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/WebViewManager;->TAG:Ljava/lang/String;

    const/16 v0, 0x18

    .line 39
    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/onesignal/WebViewManager;->MARGIN_PX_SIZE:I

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    return-void
.end method

.method protected constructor <init>(Lcom/onesignal/OSInAppMessage;Landroid/app/Activity;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/onesignal/WebViewManager;->firstShow:Z

    .line 74
    iput-object p1, p0, Lcom/onesignal/WebViewManager;->message:Lcom/onesignal/OSInAppMessage;

    .line 75
    iput-object p2, p0, Lcom/onesignal/WebViewManager;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-static {p0, p1, p2}, Lcom/onesignal/WebViewManager;->initInAppMessage(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/WebViewManager;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/onesignal/WebViewManager;->setupWebView(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/onesignal/WebViewManager;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/onesignal/WebViewManager;->firstShow:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lcom/onesignal/WebViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/onesignal/WebViewManager;)Lcom/onesignal/InAppMessageView;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/onesignal/WebViewManager;Lcom/onesignal/InAppMessageView;)Lcom/onesignal/InAppMessageView;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/onesignal/WebViewManager;Lcom/onesignal/WebViewManager$Position;I)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/onesignal/WebViewManager;->createNewInAppMessageView(Lcom/onesignal/WebViewManager$Position;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/onesignal/WebViewManager;)Landroid/app/Activity;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/onesignal/WebViewManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Landroid/app/Activity;Lorg/json/JSONObject;)I
    .registers 2

    .line 36
    invoke-static {p0, p1}, Lcom/onesignal/WebViewManager;->pageRectToViewHeight(Landroid/app/Activity;Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/onesignal/WebViewManager;->message:Lcom/onesignal/OSInAppMessage;

    return-object p0
.end method

.method static synthetic access$700(Lcom/onesignal/WebViewManager;Landroid/app/Activity;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager;->setWebViewToMaxSize(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800(Lcom/onesignal/WebViewManager;Ljava/lang/Integer;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager;->showMessageView(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$900(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSWebView;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    return-object p0
.end method

.method private blurryRenderingWebViewForKitKatWorkAround(Landroid/webkit/WebView;)V
    .registers 4

    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 329
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_b
    return-void
.end method

.method private calculateHeightAndShowWebViewAfterNewActivity()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    invoke-virtual {v0}, Lcom/onesignal/InAppMessageView;->getDisplayPosition()Lcom/onesignal/WebViewManager$Position;

    move-result-object v0

    sget-object v1, Lcom/onesignal/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0}, Lcom/onesignal/WebViewManager;->showMessageView(Ljava/lang/Integer;)V

    return-void

    .line 249
    :cond_f
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/onesignal/WebViewManager$4;

    invoke-direct {v1, p0}, Lcom/onesignal/WebViewManager$4;-><init>(Lcom/onesignal/WebViewManager;)V

    invoke-static {v0, v1}, Lcom/onesignal/OSViewUtils;->decorViewReady(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private createNewInAppMessageView(Lcom/onesignal/WebViewManager$Position;I)V
    .registers 10

    .line 342
    new-instance v6, Lcom/onesignal/InAppMessageView;

    iget-object v1, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    iget-object v0, p0, Lcom/onesignal/WebViewManager;->message:Lcom/onesignal/OSInAppMessage;

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessage;->getDisplayDuration()D

    move-result-wide v4

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/onesignal/InAppMessageView;-><init>(Landroid/webkit/WebView;Lcom/onesignal/WebViewManager$Position;ID)V

    iput-object v6, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    .line 343
    new-instance p1, Lcom/onesignal/WebViewManager$6;

    invoke-direct {p1, p0}, Lcom/onesignal/WebViewManager$6;-><init>(Lcom/onesignal/WebViewManager;)V

    invoke-virtual {v6, p1}, Lcom/onesignal/InAppMessageView;->setMessageController(Lcom/onesignal/InAppMessageView$InAppMessageViewListener;)V

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/onesignal/WebViewManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/onesignal/WebViewManager;->message:Lcom/onesignal/OSInAppMessage;

    iget-object p2, p2, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/onesignal/ActivityLifecycleHandler;->setActivityAvailableListener(Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    return-void
.end method

.method static dismissCurrentInAppMessage()V
    .registers 3

    .line 119
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewManager IAM dismissAndAwaitNextMessage lastInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Lcom/onesignal/WebViewManager;->dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    :cond_20
    return-void
.end method

.method private static enableWebViewRemoteDebugging()V
    .registers 2

    .line 363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_12

    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 364
    invoke-static {v0}, Lcom/onesignal/OneSignal;->atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 365
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_12
    return-void
.end method

.method private static getWebViewMaxSizeX(Landroid/app/Activity;)I
    .registers 2

    .line 370
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowWidth(Landroid/app/Activity;)I

    move-result p0

    sget v0, Lcom/onesignal/WebViewManager;->MARGIN_PX_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method private static getWebViewMaxSizeY(Landroid/app/Activity;)I
    .registers 2

    .line 374
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowHeight(Landroid/app/Activity;)I

    move-result p0

    sget v0, Lcom/onesignal/WebViewManager;->MARGIN_PX_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method private static initInAppMessage(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-string v0, "UTF-8"

    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x2

    .line 127
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 132
    new-instance v0, Lcom/onesignal/WebViewManager;

    invoke-direct {v0, p1, p0}, Lcom/onesignal/WebViewManager;-><init>(Lcom/onesignal/OSInAppMessage;Landroid/app/Activity;)V

    .line 133
    sput-object v0, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    .line 136
    new-instance p1, Lcom/onesignal/WebViewManager$3;

    invoke-direct {p1, v0, p0, p2}, Lcom/onesignal/WebViewManager$3;-><init>(Lcom/onesignal/WebViewManager;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_26

    :catch_1b
    move-exception p0

    .line 143
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Catch on initInAppMessage: "

    invoke-static {p1, p2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_26
    return-void
.end method

.method private static pageRectToViewHeight(Landroid/app/Activity;Lorg/json/JSONObject;)I
    .registers 5

    :try_start_0
    const-string v0, "rect"

    .line 222
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 223
    invoke-static {p1}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result p1

    .line 224
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPageHeightData:pxHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 226
    invoke-static {p0}, Lcom/onesignal/WebViewManager;->getWebViewMaxSizeY(Landroid/app/Activity;)I

    move-result p0

    if-le p1, p0, :cond_43

    .line 229
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPageHeightData:pxHeight is over screen max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_42} :catch_44

    move p1, p0

    :cond_43
    return p1

    :catch_44
    move-exception p0

    .line 234
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "pageRectToViewHeight could not get page height"

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method private setWebViewToMaxSize(Landroid/app/Activity;)V
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    invoke-static {p1}, Lcom/onesignal/WebViewManager;->getWebViewMaxSizeX(Landroid/app/Activity;)I

    move-result v1

    invoke-static {p1}, Lcom/onesignal/WebViewManager;->getWebViewMaxSizeY(Landroid/app/Activity;)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Lcom/onesignal/OSWebView;->layout(IIII)V

    return-void
.end method

.method private setupWebView(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    .line 300
    invoke-static {}, Lcom/onesignal/WebViewManager;->enableWebViewRemoteDebugging()V

    .line 302
    new-instance v0, Lcom/onesignal/OSWebView;

    invoke-direct {v0, p1}, Lcom/onesignal/OSWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    const/4 v1, 0x2

    .line 304
    invoke-virtual {v0, v1}, Lcom/onesignal/OSWebView;->setOverScrollMode(I)V

    .line 305
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onesignal/OSWebView;->setVerticalScrollBarEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    invoke-virtual {v0, v1}, Lcom/onesignal/OSWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    invoke-virtual {v0}, Lcom/onesignal/OSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    new-instance v1, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;

    invoke-direct {v1, p0}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;-><init>(Lcom/onesignal/WebViewManager;)V

    const-string v2, "OSAndroid"

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/OSWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    invoke-direct {p0, v0}, Lcom/onesignal/WebViewManager;->blurryRenderingWebViewForKitKatWorkAround(Landroid/webkit/WebView;)V

    .line 314
    new-instance v0, Lcom/onesignal/WebViewManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/onesignal/WebViewManager$5;-><init>(Lcom/onesignal/WebViewManager;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/onesignal/OSViewUtils;->decorViewReady(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method static showHTMLString(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    .registers 5

    .line 86
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1b

    .line 92
    sget-object v1, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-eqz v1, :cond_17

    .line 94
    sget-object v1, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    new-instance v2, Lcom/onesignal/WebViewManager$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/onesignal/WebViewManager$1;-><init>(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onesignal/WebViewManager;->dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    goto :goto_1a

    .line 103
    :cond_17
    invoke-static {v0, p0, p1}, Lcom/onesignal/WebViewManager;->initInAppMessage(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V

    :goto_1a
    return-void

    .line 109
    :cond_1b
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/onesignal/WebViewManager$2;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/WebViewManager$2;-><init>(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showMessageView(Ljava/lang/Integer;)V
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    if-nez v0, :cond_c

    .line 287
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "No messageView found to update a with a new height."

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 291
    :cond_c
    iget-object v1, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    invoke-virtual {v0, v1}, Lcom/onesignal/InAppMessageView;->setWebView(Landroid/webkit/WebView;)V

    if-eqz p1, :cond_1c

    .line 293
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onesignal/InAppMessageView;->updateHeight(I)V

    .line 294
    :cond_1c
    iget-object p1, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    iget-object v0, p0, Lcom/onesignal/WebViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/onesignal/InAppMessageView;->showView(Landroid/app/Activity;)V

    .line 295
    iget-object p1, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    invoke-virtual {p1}, Lcom/onesignal/InAppMessageView;->checkIfShouldDismiss()V

    return-void
.end method


# virtual methods
.method available(Landroid/app/Activity;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/onesignal/WebViewManager;->activity:Landroid/app/Activity;

    .line 273
    iget-boolean p1, p0, Lcom/onesignal/WebViewManager;->firstShow:Z

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 274
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager;->showMessageView(Ljava/lang/Integer;)V

    goto :goto_e

    .line 276
    :cond_b
    invoke-direct {p0}, Lcom/onesignal/WebViewManager;->calculateHeightAndShowWebViewAfterNewActivity()V

    :goto_e
    return-void
.end method

.method protected dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    if-nez v0, :cond_a

    if-eqz p1, :cond_9

    .line 383
    invoke-interface {p1}, Lcom/onesignal/WebViewManager$OneSignalGenericCallback;->onComplete()V

    :cond_9
    return-void

    .line 387
    :cond_a
    new-instance v1, Lcom/onesignal/WebViewManager$7;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/WebViewManager$7;-><init>(Lcom/onesignal/WebViewManager;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/InAppMessageView;->dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    return-void
.end method

.method stopped(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 281
    iget-object p1, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    if-eqz p1, :cond_7

    .line 282
    invoke-virtual {p1}, Lcom/onesignal/InAppMessageView;->removeAllViews()V

    :cond_7
    return-void
.end method
