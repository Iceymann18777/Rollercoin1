.class public final Lcom/appnext/core/webview/AppnextWebView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/core/webview/AppnextWebView$WebInterface;,
        Lcom/appnext/core/webview/AppnextWebView$a;,
        Lcom/appnext/core/webview/AppnextWebView$b;,
        Lcom/appnext/core/webview/AppnextWebView$c;
    }
.end annotation


# static fields
.field public static final il:I = 0x1

.field public static final im:I = 0x2

.field private static in:Lcom/appnext/core/webview/AppnextWebView;


# instance fields
.field private bX:Lcom/appnext/core/webview/WebAppInterface;

.field private final io:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/appnext/core/webview/AppnextWebView$b;",
            ">;"
        }
    .end annotation
.end field

.field private ip:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/appnext/core/webview/AppnextWebView;)Ljava/util/HashMap;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    return-object p0
.end method

.method private a(Lcom/appnext/core/webview/AppnextWebView$b;Ljava/lang/String;)V
    .registers 6

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "webview error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    monitor-enter v0

    .line 273
    :try_start_d
    iget-object v1, p1, Lcom/appnext/core/webview/AppnextWebView$b;->hF:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/webview/AppnextWebView$c;

    .line 274
    invoke-interface {v2, p2}, Lcom/appnext/core/webview/AppnextWebView$c;->error(Ljava/lang/String;)V

    goto :goto_13

    .line 276
    :cond_23
    iget-object p2, p1, Lcom/appnext/core/webview/AppnextWebView$b;->hF:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 277
    iget-object p2, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/appnext/core/webview/AppnextWebView$b;->aQ:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    goto :goto_35

    :goto_34
    throw p1

    :goto_35
    goto :goto_34
.end method

.method static synthetic a(Lcom/appnext/core/webview/AppnextWebView;Lcom/appnext/core/webview/AppnextWebView$b;Ljava/lang/String;)V
    .registers 6

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "webview error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    monitor-enter v0

    .line 1273
    :try_start_d
    iget-object v1, p1, Lcom/appnext/core/webview/AppnextWebView$b;->hF:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/webview/AppnextWebView$c;

    .line 1274
    invoke-interface {v2, p2}, Lcom/appnext/core/webview/AppnextWebView$c;->error(Ljava/lang/String;)V

    goto :goto_13

    .line 1276
    :cond_23
    iget-object p2, p1, Lcom/appnext/core/webview/AppnextWebView$b;->hF:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1277
    iget-object p0, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/appnext/core/webview/AppnextWebView$b;->aQ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    goto :goto_35

    :goto_34
    throw p0

    :goto_35
    goto :goto_34
.end method

.method static synthetic b(Lcom/appnext/core/webview/AppnextWebView;)Lcom/appnext/core/webview/WebAppInterface;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/appnext/core/webview/AppnextWebView;->bX:Lcom/appnext/core/webview/WebAppInterface;

    return-object p0
.end method

.method private b(Lcom/appnext/core/webview/AppnextWebView$b;Ljava/lang/String;)V
    .registers 6

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    monitor-enter v0

    .line 285
    :try_start_d
    iget-object v1, p1, Lcom/appnext/core/webview/AppnextWebView$b;->hF:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/webview/AppnextWebView$c;

    .line 286
    invoke-interface {v2, p2}, Lcom/appnext/core/webview/AppnextWebView$c;->f(Ljava/lang/String;)V

    goto :goto_13

    .line 288
    :cond_23
    iget-object p1, p1, Lcom/appnext/core/webview/AppnextWebView$b;->hF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 289
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    goto :goto_2e

    :goto_2d
    throw p1

    :goto_2e
    goto :goto_2d
.end method

.method static synthetic b(Lcom/appnext/core/webview/AppnextWebView;Lcom/appnext/core/webview/AppnextWebView$b;Ljava/lang/String;)V
    .registers 5

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    iget-object p0, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    monitor-enter p0

    .line 1285
    :try_start_d
    iget-object v0, p1, Lcom/appnext/core/webview/AppnextWebView$b;->hF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/core/webview/AppnextWebView$c;

    .line 1286
    invoke-interface {v1, p2}, Lcom/appnext/core/webview/AppnextWebView$c;->f(Ljava/lang/String;)V

    goto :goto_13

    .line 1288
    :cond_23
    iget-object p1, p1, Lcom/appnext/core/webview/AppnextWebView$b;->hF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1289
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    goto :goto_2e

    :goto_2d
    throw p1

    :goto_2e
    goto :goto_2d
.end method

.method public static b(Lcom/appnext/core/webview/WebAppInterface;)V
    .registers 2

    .line 267
    sget-object v0, Lcom/appnext/core/webview/AppnextWebView;->in:Lcom/appnext/core/webview/AppnextWebView;

    iput-object p0, v0, Lcom/appnext/core/webview/AppnextWebView;->bX:Lcom/appnext/core/webview/WebAppInterface;

    return-void
.end method

.method static synthetic bt()Lcom/appnext/core/webview/AppnextWebView;
    .registers 1

    .line 24
    sget-object v0, Lcom/appnext/core/webview/AppnextWebView;->in:Lcom/appnext/core/webview/AppnextWebView;

    return-object v0
.end method

.method public static u(Landroid/content/Context;)Lcom/appnext/core/webview/AppnextWebView;
    .registers 2

    .line 57
    sget-object p0, Lcom/appnext/core/webview/AppnextWebView;->in:Lcom/appnext/core/webview/AppnextWebView;

    if-nez p0, :cond_12

    .line 58
    new-instance p0, Lcom/appnext/core/webview/AppnextWebView;

    invoke-direct {p0}, Lcom/appnext/core/webview/AppnextWebView;-><init>()V

    .line 59
    sput-object p0, Lcom/appnext/core/webview/AppnextWebView;->in:Lcom/appnext/core/webview/AppnextWebView;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appnext/core/webview/AppnextWebView;->ip:Ljava/util/HashMap;

    .line 70
    :cond_12
    sget-object p0, Lcom/appnext/core/webview/AppnextWebView;->in:Lcom/appnext/core/webview/AppnextWebView;

    return-object p0
.end method

.method private v(Landroid/content/Context;)Landroid/webkit/WebView;
    .registers 5

    .line 160
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 163
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 164
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 165
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 167
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt p1, v2, :cond_34

    .line 168
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 170
    :cond_34
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt p1, v2, :cond_41

    .line 171
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 173
    :cond_41
    new-instance p1, Landroid/webkit/WebChromeClient;

    invoke-direct {p1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 174
    new-instance p1, Lcom/appnext/core/webview/AppnextWebView$1;

    invoke-direct {p1, p0}, Lcom/appnext/core/webview/AppnextWebView$1;-><init>(Lcom/appnext/core/webview/AppnextWebView;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/core/webview/WebAppInterface;Lcom/appnext/core/webview/a;Ljava/lang/String;)Landroid/webkit/WebView;
    .registers 13

    .line 203
    :try_start_0
    sget-object v0, Lcom/appnext/core/webview/AppnextWebView;->in:Lcom/appnext/core/webview/AppnextWebView;

    iput-object p3, v0, Lcom/appnext/core/webview/AppnextWebView;->bX:Lcom/appnext/core/webview/WebAppInterface;

    .line 205
    iget-object p3, p0, Lcom/appnext/core/webview/AppnextWebView;->ip:Ljava/util/HashMap;

    invoke-virtual {p3, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/webkit/WebView;

    if-eqz p3, :cond_1d

    .line 207
    invoke-virtual {p3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 208
    invoke-virtual {p3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 211
    :cond_1d
    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1160
    new-instance p3, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1162
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1163
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 1164
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1165
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 1167
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-lt p1, v0, :cond_72

    .line 1168
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 1170
    :cond_72
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_7f

    .line 1171
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 1173
    :cond_7f
    new-instance p1, Landroid/webkit/WebChromeClient;

    invoke-direct {p1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p3, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1174
    new-instance p1, Lcom/appnext/core/webview/AppnextWebView$1;

    invoke-direct {p1, p0}, Lcom/appnext/core/webview/AppnextWebView$1;-><init>(Lcom/appnext/core/webview/AppnextWebView;)V

    invoke-virtual {p3, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 216
    iget-object p1, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_95
    .catchall {:try_start_0 .. :try_end_95} :catchall_128

    const-string v0, "</script>"

    const-string v1, "<script>"

    if-eqz p1, :cond_d4

    :try_start_9b
    iget-object p1, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/webview/AppnextWebView$b;

    iget p1, p1, Lcom/appnext/core/webview/AppnextWebView$b;->state:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_d4

    iget-object p1, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/webview/AppnextWebView$b;

    iget-object p1, p1, Lcom/appnext/core/webview/AppnextWebView$b;->is:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d4

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appnext/core/webview/AppnextWebView$b;

    iget-object p2, p2, Lcom/appnext/core/webview/AppnextWebView$b;->is:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_fd

    :cond_d4
    if-eqz p4, :cond_ea

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/appnext/core/webview/a;->J()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_fd

    .line 223
    :cond_ea
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "<script src=\'"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'></script>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 226
    :goto_fd
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "<html><body>"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</body></html>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    move-object v1, p3

    .line 233
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/appnext/core/webview/AppnextWebView;->ip:Ljava/util/HashMap;

    invoke-virtual {p1, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance p1, Lcom/appnext/core/webview/AppnextWebView$WebInterface;

    invoke-direct {p1, p0}, Lcom/appnext/core/webview/AppnextWebView$WebInterface;-><init>(Lcom/appnext/core/webview/AppnextWebView;)V

    const-string p2, "Appnext"

    invoke-virtual {p3, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_127
    .catchall {:try_start_9b .. :try_end_127} :catchall_128

    return-object p3

    :catchall_128
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/appnext/core/webview/WebAppInterface;)V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView;->bX:Lcom/appnext/core/webview/WebAppInterface;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/appnext/core/webview/AppnextWebView;->bX:Lcom/appnext/core/webview/WebAppInterface;

    :cond_7
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/appnext/core/webview/AppnextWebView$c;)V
    .registers 10

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 85
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/webview/AppnextWebView$b;

    goto :goto_1a

    .line 88
    :cond_13
    new-instance v0, Lcom/appnext/core/webview/AppnextWebView$b;

    invoke-direct {v0, p0, v1}, Lcom/appnext/core/webview/AppnextWebView$b;-><init>(Lcom/appnext/core/webview/AppnextWebView;Lcom/appnext/core/webview/AppnextWebView$1;)V

    .line 89
    iput-object p1, v0, Lcom/appnext/core/webview/AppnextWebView$b;->aQ:Ljava/lang/String;

    .line 91
    :goto_1a
    iget v2, v0, Lcom/appnext/core/webview/AppnextWebView$b;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    if-eqz p2, :cond_4a

    .line 93
    invoke-interface {p2, p1}, Lcom/appnext/core/webview/AppnextWebView$c;->f(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_4c

    monitor-exit p0

    return-void

    .line 97
    :cond_26
    :try_start_26
    iget v2, v0, Lcom/appnext/core/webview/AppnextWebView$b;->state:I

    if-nez v2, :cond_3e

    const/4 v2, 0x1

    .line 98
    iput v2, v0, Lcom/appnext/core/webview/AppnextWebView$b;->state:I

    .line 100
    new-instance v4, Lcom/appnext/core/webview/AppnextWebView$a;

    invoke-direct {v4, p0, v0}, Lcom/appnext/core/webview/AppnextWebView$a;-><init>(Lcom/appnext/core/webview/AppnextWebView;Lcom/appnext/core/webview/AppnextWebView$b;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v3, v6

    aput-object v1, v3, v2

    invoke-virtual {v4, v5, v3}, Lcom/appnext/core/webview/AppnextWebView$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3e
    if-eqz p2, :cond_45

    .line 103
    iget-object v1, v0, Lcom/appnext/core/webview/AppnextWebView$b;->hF:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_45
    iget-object p2, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_4c

    .line 107
    :cond_4a
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ah(Ljava/lang/String;)Z
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView;->ip:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final ai(Ljava/lang/String;)Landroid/webkit/WebView;
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView;->ip:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    if-eqz p1, :cond_19

    .line 253
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 254
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_19
    return-object p1
.end method

.method public final aj(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/appnext/core/webview/AppnextWebView;->io:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/webview/AppnextWebView$b;

    if-eqz p1, :cond_12

    .line 260
    iget v0, p1, Lcom/appnext/core/webview/AppnextWebView$b;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 261
    iget-object p1, p1, Lcom/appnext/core/webview/AppnextWebView$b;->is:Ljava/lang/String;

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method
