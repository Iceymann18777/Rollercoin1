.class final Lcom/appnext/core/e$4;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/e;->a(Lcom/appnext/core/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gB:Lcom/appnext/core/e;


# direct methods
.method constructor <init>(Lcom/appnext/core/e;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "browser_fallback_url"

    const-string v1, "market_referrer"

    const/4 v2, 0x0

    if-nez p2, :cond_8

    return v2

    .line 339
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "redirect url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "https://play.google.com/store/apps/"

    .line 341
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "market://"

    .line 342
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_20
    const-string v3, "about:blank"

    .line 344
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    return v2

    :cond_29
    const-string v3, "http://"

    .line 348
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_14b

    const-string v3, "https://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14b

    const-string v3, "intent://"

    .line 349
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_109

    .line 351
    :try_start_42
    invoke-static {p2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 352
    iget-object v3, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {v3}, Lcom/appnext/core/e;->d(Lcom/appnext/core/e;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v5, 0x10000

    .line 353
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 355
    iget-object p2, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p2}, Lcom/appnext/core/e;->e(Lcom/appnext/core/e;)V

    .line 356
    iget-object p2, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p2}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object p2

    if-eqz p2, :cond_76

    .line 357
    iget-object p2, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p2}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    :cond_76
    return v4

    .line 362
    :cond_77
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3
    :try_end_7b
    .catchall {:try_start_42 .. :try_end_7b} :catchall_108

    const-string v5, ""

    if-eqz v3, :cond_a0

    :try_start_7f
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 363
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_da

    .line 365
    :cond_a0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f1

    .line 366
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

    .line 375
    :goto_da
    iget-object p2, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p2}, Lcom/appnext/core/e;->e(Lcom/appnext/core/e;)V

    .line 376
    iget-object p2, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p2}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object p2

    if-eqz p2, :cond_f0

    .line 377
    iget-object p2, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p2}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    :cond_f0
    return v4

    .line 368
    :cond_f1
    iget-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p1}, Lcom/appnext/core/e;->e(Lcom/appnext/core/e;)V

    .line 369
    iget-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p1}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object p1

    if-eqz p1, :cond_107

    .line 370
    iget-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p1}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/appnext/core/e$a;->error(Ljava/lang/String;)V
    :try_end_107
    .catchall {:try_start_7f .. :try_end_107} :catchall_108

    :cond_107
    return v4

    :catchall_108
    return v2

    .line 386
    :cond_109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 389
    :try_start_117
    iget-object v1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {v1}, Lcom/appnext/core/e;->d(Lcom/appnext/core/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 390
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_147

    .line 392
    iget-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p1}, Lcom/appnext/core/e;->e(Lcom/appnext/core/e;)V

    .line 393
    iget-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p1, p2}, Lcom/appnext/core/e;->a(Lcom/appnext/core/e;Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p1}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object p1

    if-eqz p1, :cond_146

    .line 395
    iget-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p1}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    :cond_146
    return v4

    .line 399
    :cond_147
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_14a
    .catchall {:try_start_117 .. :try_end_14a} :catchall_14a

    :catchall_14a
    return v2

    .line 408
    :cond_14b
    iget-object v0, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {v0, p2}, Lcom/appnext/core/e;->b(Lcom/appnext/core/e;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/e;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_17c

    .line 410
    iget-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p1}, Lcom/appnext/core/e;->e(Lcom/appnext/core/e;)V

    .line 411
    iget-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p1}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object p1

    if-eqz p1, :cond_172

    .line 412
    iget-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p1}, Lcom/appnext/core/e;->f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    .line 414
    :cond_172
    iget-object p1, p0, Lcom/appnext/core/e$4;->gB:Lcom/appnext/core/e;

    invoke-static {p1}, Lcom/appnext/core/e;->d(Lcom/appnext/core/e;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v4

    .line 417
    :cond_17c
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v4
.end method
