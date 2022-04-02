.class public final Lcom/tappx/a/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:J


# instance fields
.field private final a:Lcom/tappx/a/n2;

.field private b:Lcom/tappx/a/p3;

.field private final c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

.field private d:Landroid/webkit/WebView;

.field private final e:Lcom/tappx/a/m2;

.field private f:Lcom/tappx/a/p3$f;

.field private final g:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/tappx/a/l2;->h:J

    return-void
.end method

.method public constructor <init>(Lcom/tappx/sdk/android/PrivacyConsentActivity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/tappx/a/l2$b;

    invoke-direct {v0, p0}, Lcom/tappx/a/l2$b;-><init>(Lcom/tappx/a/l2;)V

    iput-object v0, p0, Lcom/tappx/a/l2;->f:Lcom/tappx/a/p3$f;

    .line 116
    new-instance v0, Lcom/tappx/a/l2$c;

    invoke-direct {v0, p0}, Lcom/tappx/a/l2$c;-><init>(Lcom/tappx/a/l2;)V

    iput-object v0, p0, Lcom/tappx/a/l2;->g:Landroid/webkit/WebViewClient;

    .line 117
    iput-object p1, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    .line 118
    invoke-static {p1}, Lcom/tappx/a/o2;->a(Landroid/content/Context;)Lcom/tappx/a/o2;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/tappx/a/o2;->c()Lcom/tappx/a/n2;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/l2;->a:Lcom/tappx/a/n2;

    .line 120
    invoke-virtual {p1}, Lcom/tappx/a/o2;->b()Lcom/tappx/a/m2;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/l2;->e:Lcom/tappx/a/m2;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "GR8QbFbIwPD6k5hAnMxS6Za9cNsNHXXZzG7GWfNC"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "kuutYDJOjEGYmzrvCGMIZqwyDXtIZYWxcXzXexLx"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/tappx/a/l2;)Lcom/tappx/a/p3;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/l2;->b:Lcom/tappx/a/p3;

    return-object p0
.end method

.method static synthetic b(Lcom/tappx/a/l2;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/l2;->d()V

    return-void
.end method

.method private c()Landroid/webkit/WebView;
    .registers 6

    .line 2
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 8
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 10
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 12
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 13
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 14
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 15
    iget-object v3, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 17
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_44

    .line 20
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 22
    :cond_44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_51

    .line 23
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 25
    :cond_51
    iget-object v1, p0, Lcom/tappx/a/l2;->g:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method static synthetic c(Lcom/tappx/a/l2;)Lcom/tappx/a/n2;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/l2;->a:Lcom/tappx/a/n2;

    return-object p0
.end method

.method static synthetic d(Lcom/tappx/a/l2;)Lcom/tappx/sdk/android/PrivacyConsentActivity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    return-object p0
.end method

.method private d()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, "EN"

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GR8QbFbIwPD6k5hAnMxS6Za9cNsNHXXZzG7GWfNC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "Atea2vjkWMaKJqXPDr3CPg"

    .line 5
    invoke-static {v1}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/tappx/a/l2;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Landroid/view/View;
    .registers 5

    .line 1
    new-instance v0, Lcom/tappx/a/p3;

    iget-object v1, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-direct {v0, v1}, Lcom/tappx/a/p3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tappx/a/l2;->b:Lcom/tappx/a/p3;

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/l2;->c()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/l2;->d:Landroid/webkit/WebView;

    .line 3
    iget-object v1, p0, Lcom/tappx/a/l2;->b:Lcom/tappx/a/p3;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/tappx/a/l2;->b:Lcom/tappx/a/p3;

    return-object v0
.end method

.method private h()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l2;->b:Lcom/tappx/a/p3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tappx/a/p3;->setCloseEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/tappx/a/l2;->b:Lcom/tappx/a/p3;

    iget-object v1, p0, Lcom/tappx/a/l2;->f:Lcom/tappx/a/p3$f;

    invoke-virtual {v0, v1}, Lcom/tappx/a/p3;->setCloseListener(Lcom/tappx/a/p3$f;)V

    .line 3
    iget-object v0, p0, Lcom/tappx/a/l2;->b:Lcom/tappx/a/p3;

    new-instance v1, Lcom/tappx/a/l2$a;

    invoke-direct {v1, p0}, Lcom/tappx/a/l2$a;-><init>(Lcom/tappx/a/l2;)V

    sget-wide v2, Lcom/tappx/a/l2;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 2
    iget-object v0, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3
    invoke-direct {p0}, Lcom/tappx/a/l2;->g()Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lcom/tappx/a/l2;->h()V

    return-void
.end method

.method private j()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "kuutYDJOjEGYmzrvCGMIZqwyDXtIZYWxcXzXexLx"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/l2;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_25

    .line 3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 4
    iget-object v2, p0, Lcom/tappx/a/l2;->d:Landroid/webkit/WebView;

    const/4 v7, 0x0

    const-string v3, "https://tappx.com/"

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_25
    if-eqz v0, :cond_2d

    .line 6
    iget-object v1, p0, Lcom/tappx/a/l2;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_32

    .line 8
    :cond_2d
    iget-object v0, p0, Lcom/tappx/a/l2;->c:Lcom/tappx/sdk/android/PrivacyConsentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_32
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/tappx/a/l2;->i()V

    .line 6
    invoke-direct {p0}, Lcom/tappx/a/l2;->j()V

    return-void
.end method

.method public a()Z
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/tappx/a/l2;->b:Lcom/tappx/a/p3;

    invoke-virtual {v0}, Lcom/tappx/a/p3;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/l2;->e:Lcom/tappx/a/m2;

    invoke-virtual {v0}, Lcom/tappx/a/m2;->a()V

    return-void
.end method
