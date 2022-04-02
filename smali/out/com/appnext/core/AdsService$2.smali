.class final Lcom/appnext/core/AdsService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/AdsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gi:Lcom/appnext/core/AdsService;


# direct methods
.method constructor <init>(Lcom/appnext/core/AdsService;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/appnext/core/AdsService$2;->gi:Lcom/appnext/core/AdsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 141
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/appnext/core/AdsService;->aX()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 142
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/n;

    .line 145
    iget-object v3, p0, Lcom/appnext/core/AdsService$2;->gi:Lcom/appnext/core/AdsService;

    iget-object v4, v2, Lcom/appnext/core/n;->am:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/AdsService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 146
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 147
    iget-object v4, v2, Lcom/appnext/core/n;->hz:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 149
    iget-object v3, p0, Lcom/appnext/core/AdsService$2;->gi:Lcom/appnext/core/AdsService;

    invoke-virtual {v3, v2}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/n;)V

    .line 151
    invoke-static {}, Lcom/appnext/core/AdsService;->aX()Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/appnext/core/AdsService$2;->gi:Lcom/appnext/core/AdsService;

    invoke-virtual {v1}, Lcom/appnext/core/AdsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 154
    iget-object v2, v2, Lcom/appnext/core/n;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/appnext/core/AdsService$2;->gi:Lcom/appnext/core/AdsService;

    invoke-virtual {v2, v1}, Lcom/appnext/core/AdsService;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 158
    :cond_59
    iget-object v0, p0, Lcom/appnext/core/AdsService$2;->gi:Lcom/appnext/core/AdsService;

    invoke-static {v0}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/AdsService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 159
    invoke-static {}, Lcom/appnext/core/AdsService;->aX()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_81

    .line 160
    iget-object v0, p0, Lcom/appnext/core/AdsService$2;->gi:Lcom/appnext/core/AdsService;

    invoke-static {v0}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/AdsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/AdsService$2;->gi:Lcom/appnext/core/AdsService;

    invoke-static {v1}, Lcom/appnext/core/AdsService;->b(Lcom/appnext/core/AdsService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_90

    .line 162
    :cond_81
    iget-object v0, p0, Lcom/appnext/core/AdsService$2;->gi:Lcom/appnext/core/AdsService;

    invoke-static {v0}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/AdsService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/appnext/core/AdsService$2;->gi:Lcom/appnext/core/AdsService;

    invoke-static {v0, v1}, Lcom/appnext/core/AdsService;->a(Lcom/appnext/core/AdsService;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_90
    .catchall {:try_start_0 .. :try_end_90} :catchall_90

    :catchall_90
    :cond_90
    :goto_90
    return-void
.end method
