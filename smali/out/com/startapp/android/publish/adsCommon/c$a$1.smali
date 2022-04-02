.class Lcom/startapp/android/publish/adsCommon/c$a$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/c$a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/startapp/android/publish/adsCommon/c$a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/c$a;Landroid/content/Context;)V
    .registers 3

    .line 581
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 584
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iget-boolean v0, v0, Lcom/startapp/android/publish/adsCommon/c$a;->c:Z

    if-nez v0, :cond_8a

    .line 586
    :try_start_6
    new-instance v0, Lcom/startapp/android/publish/adsCommon/f/e;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->h:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;)V

    .line 588
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/c$a;->a()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/f/e;->a(Lorg/json/JSONArray;)V

    .line 589
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iget-boolean v1, v1, Lcom/startapp/android/publish/adsCommon/c$a;->l:Z

    if-eqz v1, :cond_22

    const-string v1, "Page Finished"

    .line 590
    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/f/e;->d(Ljava/lang/String;)V

    goto :goto_27

    :cond_22
    const-string v1, "Timeout"

    .line 592
    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/f/e;->d(Ljava/lang/String;)V

    .line 594
    :goto_27
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iget-object v2, v2, Lcom/startapp/android/publish/adsCommon/c$a;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_30} :catch_30

    .line 599
    :catch_30
    :try_start_30
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/startapp/android/publish/adsCommon/c$a;->k:Z

    .line 600
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;)V

    .line 601
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/c$a;->a(Lcom/startapp/android/publish/adsCommon/c$a;)V

    .line 602
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iget-boolean v0, v0, Lcom/startapp/android/publish/adsCommon/c$a;->f:Z

    if-eqz v0, :cond_5d

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->isInAppBrowser()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 603
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iget-object v1, v1, Lcom/startapp/android/publish/adsCommon/c$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iget-object v2, v2, Lcom/startapp/android/publish/adsCommon/c$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 605
    :cond_5d
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iget-object v1, v1, Lcom/startapp/android/publish/adsCommon/c$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iget-object v2, v2, Lcom/startapp/android/publish/adsCommon/c$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :goto_6a
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iget-object v0, v0, Lcom/startapp/android/publish/adsCommon/c$a;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_8a

    .line 609
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iget-object v0, v0, Lcom/startapp/android/publish/adsCommon/c$a;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_77} :catch_78

    goto :goto_8a

    :catch_78
    move-exception v0

    .line 612
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->a:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 613
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/c$a$1;->b:Lcom/startapp/android/publish/adsCommon/c$a;

    iget-object v3, v3, Lcom/startapp/android/publish/adsCommon/c$a;->b:Ljava/lang/String;

    const-string v4, "AdsCommonUtils.startTimeout - error after time elapsed"

    .line 612
    invoke-static {v1, v2, v4, v0, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    return-void
.end method
