.class Lcom/startapp/android/publish/cache/a$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/cache/a;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/startapp/android/publish/cache/a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/cache/a;Landroid/content/Context;)V
    .registers 3

    .line 367
    iput-object p1, p0, Lcom/startapp/android/publish/cache/a$4;->b:Lcom/startapp/android/publish/cache/a;

    iput-object p2, p0, Lcom/startapp/android/publish/cache/a$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const-string v0, "AdCacheManager"

    const/4 v1, 0x3

    .line 372
    :try_start_3
    iget-object v2, p0, Lcom/startapp/android/publish/cache/a$4;->a:Landroid/content/Context;

    invoke-static {}, Lcom/startapp/android/publish/cache/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/startapp/android/publish/cache/a$4;->a:Landroid/content/Context;

    invoke-static {}, Lcom/startapp/android/publish/cache/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 376
    iget-object v3, p0, Lcom/startapp/android/publish/cache/a$4;->b:Lcom/startapp/android/publish/cache/a;

    iget-object v3, v3, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 377
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startapp/android/publish/cache/c;

    .line 378
    invoke-virtual {v5}, Lcom/startapp/android/publish/cache/c;->a()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v6

    sget-object v7, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    if-ne v6, v7, :cond_3e

    move-object v2, v5

    goto :goto_22

    .line 382
    :cond_3e
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapp/android/publish/cache/g;

    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saving to disk: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/startapp/android/publish/cache/c;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 384
    iget-object v6, p0, Lcom/startapp/android/publish/cache/a$4;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/startapp/android/publish/cache/c;->a()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v7

    invoke-virtual {v4}, Lcom/startapp/android/publish/cache/g;->a()Lcom/startapp/android/publish/common/model/AdPreferences;

    move-result-object v8

    iget-object v9, p0, Lcom/startapp/android/publish/cache/a$4;->b:Lcom/startapp/android/publish/cache/a;

    .line 385
    invoke-virtual {v9, v5}, Lcom/startapp/android/publish/cache/a;->c(Lcom/startapp/android/publish/cache/c;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/startapp/android/publish/cache/g;->l()I

    move-result v10

    .line 384
    invoke-static {v6, v7, v8, v9, v10}, Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;I)V

    .line 386
    iget-object v6, p0, Lcom/startapp/android/publish/cache/a$4;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/startapp/android/publish/cache/a$4;->b:Lcom/startapp/android/publish/cache/a;

    invoke-virtual {v7, v5}, Lcom/startapp/android/publish/cache/a;->c(Lcom/startapp/android/publish/cache/c;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/cache/g;Ljava/lang/String;)V

    goto :goto_22

    :cond_7f
    if-eqz v2, :cond_9e

    .line 389
    iget-object v3, p0, Lcom/startapp/android/publish/cache/a$4;->b:Lcom/startapp/android/publish/cache/a;

    iget-object v3, v3, Lcom/startapp/android/publish/cache/a;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_88} :catch_89

    goto :goto_9e

    :catch_89
    move-exception v2

    const-string v3, "Saving to disk: exception caught"

    .line 392
    invoke-static {v0, v1, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/startapp/android/publish/cache/a$4;->a:Landroid/content/Context;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 394
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdCacheManager.saveToDisk - Unexpected Thread Exception"

    const-string v4, ""

    .line 393
    invoke-static {v0, v1, v3, v2, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    :goto_9e
    return-void
.end method
