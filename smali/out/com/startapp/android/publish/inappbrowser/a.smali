.class public Lcom/startapp/android/publish/inappbrowser/a;
.super Lcom/startapp/android/publish/ads/a/b;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/inappbrowser/a$a;
    }
.end annotation


# static fields
.field protected static j:Z = false


# instance fields
.field protected d:Landroid/widget/RelativeLayout;

.field protected e:Lcom/startapp/android/publish/inappbrowser/b;

.field protected f:Landroid/webkit/WebView;

.field protected g:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

.field protected h:Landroid/widget/FrameLayout;

.field protected i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/a/b;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->i:Ljava/lang/String;

    return-void
.end method

.method private A()V
    .registers 5

    const/4 v0, 0x1

    .line 347
    :try_start_1
    sput-boolean v0, Lcom/startapp/android/publish/inappbrowser/a;->j:Z

    .line 348
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 349
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 350
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->postInvalidate()V

    .line 351
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/startapp/common/a/c;->b(Landroid/webkit/WebView;)V

    .line 352
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_3c

    :catch_20
    move-exception v0

    const/4 v1, 0x6

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IABrowserMode::destroyWebview error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IABrowserMode"

    invoke-static {v2, v1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_3c
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 9

    const-string v0, "IABrowserMode"

    const/4 v1, 0x3

    const-string v2, "initUi"

    .line 74
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->e:Lcom/startapp/android/publish/inappbrowser/b;

    if-nez v0, :cond_24

    .line 77
    new-instance v0, Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/startapp/android/publish/inappbrowser/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->e:Lcom/startapp/android/publish/inappbrowser/b;

    .line 78
    invoke-virtual {v0}, Lcom/startapp/android/publish/inappbrowser/b;->a()V

    .line 79
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->e:Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/inappbrowser/b;->b()V

    .line 80
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->e:Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/inappbrowser/b;->setButtonsListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_24
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/startapp/android/publish/inappbrowser/a;->e:Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 84
    new-instance v0, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v0, v2, v3, v4}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->g:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    .line 85
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 86
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const-string v3, "#45d200"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 88
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->g:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->g:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->setBackgroundColor(I)V

    .line 90
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->g:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    const/16 v3, 0x83c

    invoke-virtual {v0, v3}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->setId(I)V

    .line 92
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x835

    .line 93
    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 94
    iget-object v4, p0, Lcom/startapp/android/publish/inappbrowser/a;->d:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/startapp/android/publish/inappbrowser/a;->g:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->h:Landroid/widget/FrameLayout;

    .line 98
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_c0

    .line 100
    :try_start_92
    invoke-direct {p0}, Lcom/startapp/android/publish/inappbrowser/a;->y()V

    .line 101
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9a} :catch_9b

    goto :goto_c0

    :catch_9b
    move-exception v0

    .line 104
    iget-object v4, p0, Lcom/startapp/android/publish/inappbrowser/a;->e:Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {v4}, Lcom/startapp/android/publish/inappbrowser/b;->c()V

    .line 105
    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/startapp/android/publish/adsCommon/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object p1

    sget-object v4, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "IABrowserMode.initUi - Webvie  failed"

    const-string v6, ""

    invoke-static {p1, v4, v5, v0, v6}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 110
    :cond_c0
    :goto_c0
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->h:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xf

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    invoke-virtual {p1, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 116
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/startapp/android/publish/inappbrowser/a;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private y()V
    .registers 6

    .line 143
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    .line 144
    invoke-direct {p0}, Lcom/startapp/android/publish/inappbrowser/a;->z()V

    .line 146
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/android/publish/inappbrowser/a$a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/inappbrowser/a;->e:Lcom/startapp/android/publish/inappbrowser/b;

    iget-object v4, p0, Lcom/startapp/android/publish/inappbrowser/a;->g:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/startapp/android/publish/inappbrowser/a$a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/inappbrowser/b;Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;Lcom/startapp/android/publish/inappbrowser/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 147
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/android/publish/inappbrowser/a$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/inappbrowser/a$1;-><init>(Lcom/startapp/android/publish/inappbrowser/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private z()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 165
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 166
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 167
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3e

    .line 170
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_3e
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 5

    .line 58
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/a/b;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Lcom/startapp/android/publish/inappbrowser/a;->j:Z

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->d:Landroid/widget/RelativeLayout;

    .line 61
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/inappbrowser/a;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    .line 63
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/inappbrowser/a;->c(Landroid/os/Bundle;)V

    .line 65
    :cond_1b
    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 317
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    goto :goto_31

    .line 320
    :cond_a
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    const/4 p2, 0x3

    const-string v0, "IABrowserMode"

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_27

    const-string p1, "IABWebViewClient::KEYCODE_BACK can go back"

    .line 321
    invoke-static {v0, p2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->g:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {p1}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->a()V

    .line 324
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_2f

    :cond_27
    const-string p1, "IABWebViewClient::KEYCODE_BACK canT go back"

    .line 326
    invoke-static {v0, p2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->x()V

    :goto_2f
    const/4 p1, 0x1

    return p1

    .line 334
    :cond_31
    :goto_31
    invoke-super {p0, p1, p2}, Lcom/startapp/android/publish/ads/a/b;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_4c

    goto :goto_4a

    .line 297
    :pswitch_8
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 298
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->g:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {p1}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->a()V

    .line 299
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_4a

    .line 291
    :pswitch_1d
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 292
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->g:Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;

    invoke-virtual {p1}, Lcom/startapp/android/publish/inappbrowser/AnimatingProgressBar;->a()V

    .line 293
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_4a

    .line 303
    :pswitch_32
    iget-object p1, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    if-eqz p1, :cond_4a

    .line 304
    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/startapp/android/publish/adsCommon/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->x()V

    goto :goto_4a

    .line 309
    :pswitch_47
    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->x()V

    :cond_4a
    :goto_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x837
        :pswitch_47
        :pswitch_32
        :pswitch_1d
        :pswitch_8
    .end packed-switch
.end method

.method public s()V
    .registers 1

    return-void
.end method

.method public u()V
    .registers 1

    return-void
.end method

.method x()V
    .registers 2

    .line 339
    invoke-direct {p0}, Lcom/startapp/android/publish/inappbrowser/a;->A()V

    .line 340
    iget-object v0, p0, Lcom/startapp/android/publish/inappbrowser/a;->e:Lcom/startapp/android/publish/inappbrowser/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/inappbrowser/b;->c()V

    .line 341
    invoke-virtual {p0}, Lcom/startapp/android/publish/inappbrowser/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
