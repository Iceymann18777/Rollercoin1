.class Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field private callbackSent:Z

.field final synthetic this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)V
    .registers 2

    .line 560
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 562
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->callbackSent:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 566
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/common/metaData/MetaData;->isOmsdkEnabled()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 567
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object p2, p1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-static {p2}, Lcom/startapp/android/publish/omsdk/a;->a(Landroid/webkit/WebView;)Lcom/b/a/a/a/b/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$202(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;Lcom/b/a/a/a/b/b;)Lcom/b/a/a/a/b/b;

    .line 568
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$200(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Lcom/b/a/a/a/b/b;

    move-result-object p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_5d

    .line 569
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$300(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 570
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$200(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Lcom/b/a/a/a/b/b;

    move-result-object p1

    iget-object p2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {p2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$300(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/b/a/a/a/b/b;->b(Landroid/view/View;)V

    .line 572
    :cond_3a
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$200(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Lcom/b/a/a/a/b/b;

    move-result-object p1

    iget-object p2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object p2, p2, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Lcom/b/a/a/a/b/b;->a(Landroid/view/View;)V

    .line 573
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$200(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Lcom/b/a/a/a/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/a/b/b;->a()V

    .line 575
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$200(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Lcom/b/a/a/a/b/b;

    move-result-object p1

    invoke-static {p1}, Lcom/b/a/a/a/b/a;->a(Lcom/b/a/a/a/b/b;)Lcom/b/a/a/a/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/a/b/a;->a()V

    :cond_5d
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p0

    .line 582
    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$400(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$000(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 588
    :cond_14
    iget-boolean v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->callbackSent:Z

    const/4 v3, 0x1

    if-nez v1, :cond_2a

    .line 589
    iput-boolean v3, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->callbackSent:Z

    .line 590
    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    if-eqz v1, :cond_2a

    .line 591
    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    iget-object v4, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-interface {v1, v4}, Lcom/startapp/android/publish/ads/banner/BannerListener;->onClick(Landroid/view/View;)V

    .line 595
    :cond_2a
    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-virtual {v1, v3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->cancelScheduledImpression(Z)V

    .line 597
    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-static {v1, v4}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z

    move-result v1

    .line 599
    iget-object v4, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {v4}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$400(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Z

    move-result v4

    if-nez v4, :cond_10c

    const-string v4, "index="

    move-object/from16 v6, p2

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 602
    :try_start_4d
    invoke-static/range {p2 .. p2}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/lang/String;)I

    move-result v4

    .line 604
    iget-object v5, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v5, v5, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v5, v4}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->d(I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_c6

    if-nez v1, :cond_c6

    .line 605
    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->m()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v4, v1, :cond_7a

    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->m()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    goto :goto_7b

    :cond_7a
    move-object v1, v7

    :goto_7b
    iget-object v8, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v8, v8, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    .line 606
    invoke-virtual {v8}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->o()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_90

    iget-object v7, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v7, v7, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v7}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->o()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    :cond_90
    move-object v8, v7

    new-instance v9, Lcom/startapp/android/publish/adsCommon/d/b;

    iget-object v7, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {v7}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$500(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/startapp/android/publish/adsCommon/b;->A()J

    move-result-wide v10

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/startapp/android/publish/adsCommon/b;->B()J

    move-result-wide v12

    iget-object v7, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v7, v7, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    .line 608
    invoke-virtual {v7, v4}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->e(I)Z

    move-result v14

    iget-object v7, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v7, v7, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v7, v4}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->f(I)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v6, p2

    move-object v7, v1

    .line 605
    invoke-static/range {v5 .. v16}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;JJZLjava/lang/Boolean;Z)V

    goto/16 :goto_197

    .line 610
    :cond_c6
    iget-object v5, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-virtual {v5}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v8, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v8, v8, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v8}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->m()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_e1

    iget-object v7, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v7, v7, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v7}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->m()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    :cond_e1
    new-instance v8, Lcom/startapp/android/publish/adsCommon/d/b;

    iget-object v9, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    .line 611
    invoke-static {v9}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$600(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v9, v9, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    .line 612
    invoke-virtual {v9, v4}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->e(I)Z

    move-result v4

    if-eqz v4, :cond_fa

    if-nez v1, :cond_fa

    const/4 v9, 0x1

    goto :goto_fb

    :cond_fa
    const/4 v9, 0x0

    :goto_fb
    const/4 v10, 0x0

    move-object/from16 v6, p2

    .line 610
    invoke-static/range {v5 .. v10}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;ZZ)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_101} :catch_103

    goto/16 :goto_197

    :catch_103
    const/4 v1, 0x6

    const-string v3, "BannerHtml"

    const-string v4, "Error while trying parsing index from url"

    .line 615
    invoke-static {v3, v1, v4}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_10c
    move-object/from16 v6, p2

    .line 619
    :cond_10e
    iget-object v4, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v4, v4, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v4, v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_167

    if-nez v1, :cond_167

    .line 620
    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->m()[Ljava/lang/String;

    move-result-object v1

    aget-object v7, v1, v2

    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->o()[Ljava/lang/String;

    move-result-object v1

    aget-object v8, v1, v2

    new-instance v9, Lcom/startapp/android/publish/adsCommon/d/b;

    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$700(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/b;->A()J

    move-result-wide v10

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/b;->B()J

    move-result-wide v12

    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    .line 622
    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->e(I)Z

    move-result v14

    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->f(I)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v6, p2

    .line 620
    invoke-static/range {v5 .. v16}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;JJZLjava/lang/Boolean;Z)V

    goto :goto_197

    .line 624
    :cond_167
    iget-object v4, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v4, v4, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->m()[Ljava/lang/String;

    move-result-object v4

    aget-object v7, v4, v2

    new-instance v8, Lcom/startapp/android/publish/adsCommon/d/b;

    iget-object v4, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-static {v4}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$800(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v4, v4, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v4, v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->e(I)Z

    move-result v4

    if-eqz v4, :cond_190

    if-nez v1, :cond_190

    const/4 v9, 0x1

    goto :goto_191

    :cond_190
    const/4 v9, 0x0

    :goto_191
    const/4 v10, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v5 .. v10}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;ZZ)V

    .line 628
    :goto_197
    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 630
    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-virtual {v1, v3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setClicked(Z)V

    return v3
.end method
