.class final Lcom/appnext/core/ResultActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/ResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hB:Lcom/appnext/core/ResultActivity;


# direct methods
.method constructor <init>(Lcom/appnext/core/ResultActivity;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/appnext/core/ResultActivity$1;->hB:Lcom/appnext/core/ResultActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "browser_fallback_url"

    const-string v1, "market_referrer"

    const/4 v2, 0x0

    if-nez p2, :cond_8

    return v2

    .line 91
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result page url "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "http"

    .line 93
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_36

    .line 94
    iget-object v0, p0, Lcom/appnext/core/ResultActivity$1;->hB:Lcom/appnext/core/ResultActivity;

    invoke-static {v0, p2}, Lcom/appnext/core/ResultActivity;->a(Lcom/appnext/core/ResultActivity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/ResultActivity;->hasNewResolver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 95
    iget-object p1, p0, Lcom/appnext/core/ResultActivity$1;->hB:Lcom/appnext/core/ResultActivity;

    invoke-static {p1, p2}, Lcom/appnext/core/ResultActivity;->b(Lcom/appnext/core/ResultActivity;Ljava/lang/String;)V

    goto :goto_35

    .line 97
    :cond_32
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_35
    return v4

    :cond_36
    const-string p1, "intent://"

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 103
    :try_start_3e
    invoke-static {p2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/appnext/core/ResultActivity$1;->hB:Lcom/appnext/core/ResultActivity;

    invoke-virtual {p2}, Lcom/appnext/core/ResultActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/high16 v3, 0x10000

    .line 105
    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_5e

    .line 107
    iget-object p2, p0, Lcom/appnext/core/ResultActivity$1;->hB:Lcom/appnext/core/ResultActivity;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/appnext/core/ResultActivity;->b(Lcom/appnext/core/ResultActivity;Ljava/lang/String;)V

    return v4

    .line 111
    :cond_5e
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_c7

    const-string v3, ""

    if-eqz p2, :cond_87

    :try_start_66
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_87

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_87

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c1

    .line 114
    :cond_87
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c6

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c6

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "market://details?id="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&referrer="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    :goto_c1
    iget-object p2, p0, Lcom/appnext/core/ResultActivity$1;->hB:Lcom/appnext/core/ResultActivity;

    invoke-static {p2, p1}, Lcom/appnext/core/ResultActivity;->b(Lcom/appnext/core/ResultActivity;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_66 .. :try_end_c6} :catchall_c7

    :cond_c6
    return v4

    :catchall_c7
    return v2

    .line 132
    :cond_c8
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 135
    :try_start_d6
    iget-object v0, p0, Lcom/appnext/core/ResultActivity$1;->hB:Lcom/appnext/core/ResultActivity;

    invoke-virtual {v0}, Lcom/appnext/core/ResultActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_ec

    .line 138
    iget-object p1, p0, Lcom/appnext/core/ResultActivity$1;->hB:Lcom/appnext/core/ResultActivity;

    invoke-static {p1, p2}, Lcom/appnext/core/ResultActivity;->b(Lcom/appnext/core/ResultActivity;Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_d6 .. :try_end_eb} :catchall_ec

    return v4

    :catchall_ec
    :cond_ec
    return v2
.end method
