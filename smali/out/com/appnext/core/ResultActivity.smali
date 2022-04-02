.class public Lcom/appnext/core/ResultActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private hA:Landroid/content/Intent;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static U(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/appnext/core/ResultActivity;Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .line 27
    invoke-static {p1}, Lcom/appnext/core/ResultActivity;->U(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .registers 5

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 208
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 210
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2f
    return-object p1
.end method

.method static synthetic b(Lcom/appnext/core/ResultActivity;Ljava/lang/String;)V
    .registers 4

    .line 1246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1247
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 1248
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1249
    invoke-virtual {p0, v0}, Lcom/appnext/core/ResultActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private bl()V
    .registers 1

    .line 242
    invoke-virtual {p0}, Lcom/appnext/core/ResultActivity;->onBackPressed()V

    return-void
.end method

.method private openLink(Ljava/lang/String;)V
    .registers 4

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 248
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v0}, Lcom/appnext/core/ResultActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final hasNewResolver(Landroid/content/Intent;)Z
    .registers 6

    .line 217
    iget-object v0, p0, Lcom/appnext/core/ResultActivity;->hA:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    if-eqz p1, :cond_9

    return v1

    :cond_9
    return v2

    :cond_a
    if-nez p1, :cond_d

    return v2

    .line 223
    :cond_d
    invoke-static {p0, p1}, Lcom/appnext/core/ResultActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 224
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 225
    iget-object v3, p0, Lcom/appnext/core/ResultActivity;->hA:Landroid/content/Intent;

    invoke-static {p0, v3}, Lcom/appnext/core/ResultActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 227
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v1

    :cond_36
    return v2
.end method

.method public onBackPressed()V
    .registers 2

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 256
    iget-object v0, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_19

    .line 258
    :cond_12
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    .line 262
    :catchall_16
    invoke-virtual {p0}, Lcom/appnext/core/ResultActivity;->finish()V

    :goto_19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/appnext/core/ResultActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/appnext/core/ResultActivity;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/appnext/core/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    .line 69
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 70
    iget-object v1, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 71
    iget-object v1, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 72
    iget-object v1, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 73
    iget-object v1, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v1, v3, :cond_5a

    .line 76
    iget-object v1, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 78
    :cond_5a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_69

    .line 79
    iget-object v1, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 81
    :cond_69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/4 v4, 0x0

    if-lt v1, v3, :cond_77

    .line 82
    iget-object v0, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_7c

    .line 84
    :cond_77
    iget-object v1, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 86
    :goto_7c
    iget-object v0, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/appnext/core/ResultActivity$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/ResultActivity$1;-><init>(Lcom/appnext/core/ResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 180
    iget-object v0, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object p1, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object p1, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 185
    :try_start_a2
    invoke-virtual {p0}, Lcom/appnext/core/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-virtual {p0}, Lcom/appnext/core/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading result page "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/appnext/core/ResultActivity;->U(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/ResultActivity;->hA:Landroid/content/Intent;

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_e7

    .line 191
    iget-object v0, p0, Lcom/appnext/core/ResultActivity;->hA:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_e7

    .line 193
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 196
    :cond_e7
    iget-object v0, p0, Lcom/appnext/core/ResultActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_ec
    .catchall {:try_start_a2 .. :try_end_ec} :catchall_ed

    return-void

    .line 202
    :catchall_ed
    invoke-virtual {p0}, Lcom/appnext/core/ResultActivity;->finish()V

    return-void
.end method
