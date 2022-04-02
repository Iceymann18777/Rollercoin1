.class public Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SimpleWebViewClient.java"


# instance fields
.field protected _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    return-void
.end method

.method private _handleIntent(Ljava/lang/String;Landroid/webkit/WebView;)V
    .registers 6

    const/4 v0, 0x1

    .line 110
    :try_start_1
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 112
    invoke-virtual {p2}, Landroid/webkit/WebView;->stopLoading()V

    .line 113
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 114
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 116
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5e

    :cond_1e
    const-string v1, "browser_fallback_url"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "market:"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "geo:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_45

    :cond_35
    const-string p1, "/store/apps/details?id="

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 124
    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_handlePlayStoreLink(Ljava/lang/String;)V

    goto :goto_5e

    .line 126
    :cond_41
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_5e

    .line 120
    :cond_45
    :goto_45
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_55
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_55} :catch_56

    goto :goto_5e

    :catch_56
    move-exception p1

    const-string p2, "SimpleWebView"

    const-string v0, "Can\'t resolve intent://"

    .line 131
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5e
    :goto_5e
    return-void
.end method

.method private _handleMailTo(Ljava/lang/String;)V
    .registers 7

    .line 91
    invoke-static {p1}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_60

    .line 93
    invoke-virtual {p1}, Landroid/net/MailTo;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.CC"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "bcc"

    .line 100
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 101
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "android.intent.extra.BCC"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    :cond_52
    invoke-virtual {p1}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_60
    return-void
.end method

.method private _handlePlayStoreLink(Ljava/lang/String;)V
    .registers 5

    const-string v0, "/store/apps/details?id="

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x17

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private _handleSmsTo(Ljava/lang/String;)V
    .registers 6

    const-string v0, ":"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 77
    aget-object v1, p1, v0

    .line 79
    array-length v2, p1

    if-le v2, v0, :cond_10

    const/4 v0, 0x2

    .line 80
    aget-object p1, p1, v0

    goto :goto_12

    :cond_10
    const-string p1, ""

    .line 83
    :goto_12
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "address"

    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sms_body"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    .line 147
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/appsgeyser/multiTabApp/ui/dialog/SslErrorDialog;->execute(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 35
    :try_start_1
    invoke-static {p2}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 36
    invoke-direct {p0, p2}, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_handleMailTo(Ljava/lang/String;)V

    return v2

    :cond_c
    const-string v1, "tel:"

    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 39
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_25
    const-string v1, "market:"

    .line 42
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_a6

    const-string v3, "android.intent.action.VIEW"

    if-nez v1, :cond_97

    :try_start_2f
    const-string v1, "geo:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_97

    :cond_38
    const-string v1, "smsto:"

    .line 47
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 48
    invoke-direct {p0, p2}, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_handleSmsTo(Ljava/lang/String;)V

    return v2

    :cond_44
    const-string v1, "intent://"

    .line 50
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 51
    invoke-direct {p0, p2, p1}, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_handleIntent(Ljava/lang/String;Landroid/webkit/WebView;)V

    return v2

    :cond_50
    const-string p1, "/store/apps/details?id="

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 54
    invoke-direct {p0, p2}, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_handlePlayStoreLink(Ljava/lang/String;)V

    return v2

    :cond_5c
    const-string p1, "http:"

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_aa

    const-string p1, "https:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_aa

    const-string p1, "file:"

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_aa

    const-string p1, "about:blank"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_aa

    .line 58
    new-instance p1, Landroid/content/Intent;

    .line 59
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 61
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_aa

    .line 63
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 43
    :cond_97
    :goto_97
    new-instance p1, Landroid/content/Intent;

    .line 44
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/browser/SimpleWebViewClient;->_context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_a5} :catch_a6

    return v2

    :catch_a6
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_aa
    return v0
.end method
