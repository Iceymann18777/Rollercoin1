.class Lcom/moat/analytics/mobile/mpub/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/g$a;
    }
.end annotation


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Lcom/moat/analytics/mobile/mpub/j;

.field final c:Ljava/lang/String;

.field private final d:Lcom/moat/analytics/mobile/mpub/g$a;

.field private e:Z

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/moat/analytics/mobile/mpub/g$a;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/moat/analytics/mobile/mpub/g;->d:Lcom/moat/analytics/mobile/mpub/g$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/g;->e:Z

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x4197d78400000000L    # 1.0E8

    mul-double v4, v4, v6

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "_moatTracker%d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/moat/analytics/mobile/mpub/g;->c:Ljava/lang/String;

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/mpub/g;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_56

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5f

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_5f
    sget-object p1, Lcom/moat/analytics/mobile/mpub/j$a;->b:Lcom/moat/analytics/mobile/mpub/j$a;

    sget-object v0, Lcom/moat/analytics/mobile/mpub/g$a;->b:Lcom/moat/analytics/mobile/mpub/g$a;

    if-ne p2, v0, :cond_67

    sget-object p1, Lcom/moat/analytics/mobile/mpub/j$a;->c:Lcom/moat/analytics/mobile/mpub/j$a;

    :cond_67
    :try_start_67
    new-instance p2, Lcom/moat/analytics/mobile/mpub/j;

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->a:Landroid/webkit/WebView;

    invoke-direct {p2, v0, p1}, Lcom/moat/analytics/mobile/mpub/j;-><init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/mpub/j$a;)V

    iput-object p2, p0, Lcom/moat/analytics/mobile/mpub/g;->b:Lcom/moat/analytics/mobile/mpub/j;
    :try_end_70
    .catch Lcom/moat/analytics/mobile/mpub/n; {:try_start_67 .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :goto_75
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 13

    const-string v0, "mianahwvc"

    :try_start_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + \'_moatElToTrack\'] = document.getElementById(\'%s\');var moatapi = {\'dropTime\':%d,\'adData\': {\'ids\': ids, \'duration\': duration, \'url\': \'n/a\'},\'dispatchEvent\': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},\'dispatchMany\': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {\'value\': moatapi});var s = document.createElement(\'script\');s.src = \'https://z.moatads.com/\' + pcode + \'/moatvideo.js?\' + apiname + \'#\' + apiname;document.body.appendChild(s);})(\'%s\', \'%s\', %s, %s);</script></body></html>"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 p2, 0x2

    aput-object p3, v3, p2

    const/4 p2, 0x3

    aput-object v0, v3, p2

    const/4 p2, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v3, p2

    const/4 p2, 0x5

    aput-object p0, v3, p2

    const/4 p0, 0x6

    aput-object p1, v3, p0

    const/4 p0, 0x7

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, p0

    const/16 p0, 0x8

    aput-object p5, v3, p0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception p0

    invoke-static {p0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    const-string p0, ""

    :goto_45
    return-object p0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/g;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/moat/analytics/mobile/mpub/g;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/mpub/g;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/mpub/g;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/mpub/g;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n   <meta charset=\"UTF-8\">\n   <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n    <script src=\"https://z.moatads.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/moatad.js\" type=\"text/javascript\"></script>\n</body>\n</html>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/mpub/g;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/mpub/g;->f:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method a()V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "GlobalWebView"

    const-string v2, "Cleaning up"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->b:Lcom/moat/analytics/mobile/mpub/j;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/j;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->b:Lcom/moat/analytics/mobile/mpub/j;

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/g;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->a:Landroid/webkit/WebView;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->d:Lcom/moat/analytics/mobile/mpub/g$a;

    sget-object v1, Lcom/moat/analytics/mobile/mpub/g$a;->a:Lcom/moat/analytics/mobile/mpub/g$a;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/mpub/g$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/mpub/g$1;-><init>(Lcom/moat/analytics/mobile/mpub/g;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->a:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->d:Lcom/moat/analytics/mobile/mpub/g$a;

    sget-object v1, Lcom/moat/analytics/mobile/mpub/g$a;->b:Lcom/moat/analytics/mobile/mpub/g$a;

    if-ne v0, v1, :cond_60

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "GlobalWebView"

    const/4 v3, 0x3

    if-lt v0, v1, :cond_28

    const-string v0, "Starting off polling interval to check for Video API instance presence"

    invoke-static {v3, v2, p0, v0}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->f:Landroid/os/Handler;

    new-instance v0, Lcom/moat/analytics/mobile/mpub/g$2;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/mpub/g$2;-><init>(Lcom/moat/analytics/mobile/mpub/g;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->g:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/g;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_48

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android API version is less than KitKat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, p0, v0}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/mpub/g$3;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/mpub/g$3;-><init>(Lcom/moat/analytics/mobile/mpub/g;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_48
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/moat/analytics/mobile/mpub/g;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/g;->c:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/moat/analytics/mobile/mpub/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "text/html"

    const-string p4, "base64"

    invoke-virtual {p2, p1, p3, p4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    return-void
.end method
