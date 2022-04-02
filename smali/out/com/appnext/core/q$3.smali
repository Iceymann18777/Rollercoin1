.class final Lcom/appnext/core/q$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hM:Lcom/appnext/core/q;


# direct methods
.method constructor <init>(Lcom/appnext/core/q;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .registers 9

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    const-string v1, "admin.appnext.com"

    const-string v2, "applink"

    invoke-static {v1, v2}, Lcom/appnext/core/f;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v2}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/appnext/core/q$a;->f()Lcom/appnext/core/AppnextAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v3}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/appnext/core/q$a;->e()Lcom/appnext/core/Ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v4}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/appnext/core/q$a;->e()Lcom/appnext/core/Ad;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appnext/core/Ad;->getTID()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SetDOpenV1"

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/appnext/core/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3a

    .line 234
    :catchall_3a
    :try_start_3a
    iget-object v0, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appnext/core/q$a;->g()Lcom/appnext/core/p;

    move-result-object v0

    const-string v1, "urlApp_protection"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_4e
    .catchall {:try_start_3a .. :try_end_4e} :catchall_90

    const-string v1, "error_no_market"

    if-eqz v0, :cond_7e

    .line 236
    :try_start_52
    iget-object p1, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v2}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/appnext/core/q$a;->f()Lcom/appnext/core/AppnextAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/appnext/core/q;->d(Lcom/appnext/core/q;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_52 .. :try_end_73} :catchall_74

    goto :goto_90

    .line 238
    :catchall_74
    :try_start_74
    iget-object p1, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {p1}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/appnext/core/q$a;->report(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_90

    goto :goto_90

    :cond_7e
    if-nez p1, :cond_81

    return-void

    .line 245
    :cond_81
    :try_start_81
    iget-object v0, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v0, p1}, Lcom/appnext/core/q;->d(Lcom/appnext/core/q;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_87

    goto :goto_90

    .line 247
    :catchall_87
    :try_start_87
    iget-object p1, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {p1}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/appnext/core/q$a;->report(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_90

    :catchall_90
    :goto_90
    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .registers 14

    const-string v0, "applink"

    const-string v1, "admin.appnext.com"

    .line 188
    iget-object v2, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v2}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/appnext/core/q$a;->f()Lcom/appnext/core/AppnextAd;

    move-result-object v2

    .line 189
    iget-object v3, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v3}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/appnext/core/q$a;->e()Lcom/appnext/core/Ad;

    move-result-object v3

    if-eqz v3, :cond_10f

    if-eqz v2, :cond_10f

    .line 190
    iget-object v4, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v4}, Lcom/appnext/core/q;->f(Lcom/appnext/core/q;)Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_26

    goto/16 :goto_10f

    .line 193
    :cond_26
    iget-object v4, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v4}, Lcom/appnext/core/q;->f(Lcom/appnext/core/q;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_cb

    .line 195
    :try_start_36
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "market://details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_70

    const-string v4, "http"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 196
    iget-object v5, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v1, v0}, Lcom/appnext/core/f;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getTID()Ljava/lang/String;

    move-result-object v9

    const-string v11, "SetROpenV1"

    move-object v10, p1

    invoke-virtual/range {v5 .. v11}, Lcom/appnext/core/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_36 .. :try_end_6e} :catchall_6f

    goto :goto_70

    :catchall_6f
    nop

    .line 201
    :cond_70
    :goto_70
    iget-object v4, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v4}, Lcom/appnext/core/q;->h(Lcom/appnext/core/q;)Lcom/appnext/core/h;

    move-result-object v4

    if-nez v4, :cond_82

    .line 202
    iget-object v4, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    new-instance v5, Lcom/appnext/core/h;

    invoke-direct {v5}, Lcom/appnext/core/h;-><init>()V

    invoke-static {v4, v5}, Lcom/appnext/core/q;->a(Lcom/appnext/core/q;Lcom/appnext/core/h;)Lcom/appnext/core/h;

    .line 203
    :cond_82
    iget-object v4, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v4}, Lcom/appnext/core/q;->h(Lcom/appnext/core/q;)Lcom/appnext/core/h;

    move-result-object v4

    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v0}, Lcom/appnext/core/f;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getTID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getVID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;

    move-result-object v3

    .line 1036
    iput-object v5, v4, Lcom/appnext/core/h;->am:Ljava/lang/String;

    .line 1037
    iput-object p1, v4, Lcom/appnext/core/h;->an:Ljava/lang/String;

    .line 1038
    iput-object v0, v4, Lcom/appnext/core/h;->guid:Ljava/lang/String;

    .line 1039
    iput-object v1, v4, Lcom/appnext/core/h;->ao:Ljava/lang/String;

    .line 1040
    iput-object v2, v4, Lcom/appnext/core/h;->ap:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1041
    iput-object p1, v4, Lcom/appnext/core/h;->at:Landroid/os/ResultReceiver;

    .line 1042
    iput-object v6, v4, Lcom/appnext/core/h;->aq:Ljava/lang/String;

    .line 1043
    iput-object v7, v4, Lcom/appnext/core/h;->ar:Ljava/lang/String;

    .line 1044
    iput-object v3, v4, Lcom/appnext/core/h;->as:Ljava/lang/String;

    .line 205
    iget-object p1, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {p1}, Lcom/appnext/core/q;->h(Lcom/appnext/core/q;)Lcom/appnext/core/h;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->f(Lcom/appnext/core/q;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appnext/core/h;->t(Landroid/content/Context;)V

    return-void

    :cond_cb
    const-string v0, "market://"

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "error_no_market"

    if-eqz v0, :cond_100

    .line 210
    :try_start_d5
    iget-object p1, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {p1}, Lcom/appnext/core/q;->f(Lcom/appnext/core/q;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 211
    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 212
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    iget-object v0, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->f(Lcom/appnext/core/q;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f5
    .catchall {:try_start_d5 .. :try_end_f5} :catchall_f6

    return-void

    .line 215
    :catchall_f6
    iget-object p1, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {p1}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/appnext/core/q$a;->report(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_100
    :try_start_100
    iget-object v0, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {v0, p1}, Lcom/appnext/core/q;->d(Lcom/appnext/core/q;Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_100 .. :try_end_105} :catchall_106

    return-void

    .line 221
    :catchall_106
    iget-object p1, p0, Lcom/appnext/core/q$3;->hM:Lcom/appnext/core/q;

    invoke-static {p1}, Lcom/appnext/core/q;->g(Lcom/appnext/core/q;)Lcom/appnext/core/q$a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/appnext/core/q$a;->report(Ljava/lang/String;)V

    :cond_10f
    :goto_10f
    return-void
.end method
