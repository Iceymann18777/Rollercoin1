.class abstract Lcom/mopub/mobileads/BaseInterstitialActivity;
.super Landroid/app/Activity;
.source "BaseInterstitialActivity.java"


# instance fields
.field protected mAdReport:Lcom/mopub/common/AdReport;

.field private mBroadcastIdentifier:Ljava/lang/Long;

.field private mCloseableLayout:Lcom/mopub/common/CloseableLayout;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static getAdReportFromIntent(Landroid/content/Intent;)Lcom/mopub/common/AdReport;
    .registers 2

    :try_start_0
    const-string v0, "mopub-intent-ad-report"

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/AdReport;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static getBroadcastIdentifierFromIntent(Landroid/content/Intent;)Ljava/lang/Long;
    .registers 4

    const-string v0, "broadcastIdentifier"

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-wide/16 v1, -0x1

    .line 99
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method static getResponseString(Lcom/mopub/common/AdReport;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    .line 115
    invoke-virtual {p0}, Lcom/mopub/common/AdReport;->getResponseString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method


# virtual methods
.method public abstract getAdView()Landroid/view/View;
.end method

.method getBroadcastIdentifier()Ljava/lang/Long;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mBroadcastIdentifier:Ljava/lang/Long;

    return-object v0
.end method

.method protected getCloseableLayout()Lcom/mopub/common/CloseableLayout;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    return-object v0
.end method

.method getResponseString()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mAdReport:Lcom/mopub/common/AdReport;

    invoke-static {v0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->getResponseString(Lcom/mopub/common/AdReport;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hideInterstitialCloseButton()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    :cond_8
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/mopub/mobileads/BaseInterstitialActivity;->getBroadcastIdentifierFromIntent(Landroid/content/Intent;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mBroadcastIdentifier:Ljava/lang/Long;

    .line 38
    invoke-static {p1}, Lcom/mopub/mobileads/BaseInterstitialActivity;->getAdReportFromIntent(Landroid/content/Intent;)Lcom/mopub/common/AdReport;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mAdReport:Lcom/mopub/common/AdReport;

    .line 40
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->getAdView()Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/mopub/common/CloseableLayout;

    invoke-direct {v0, p0}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    .line 43
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->setBackgroundColor(I)V

    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    new-instance v1, Lcom/mopub/mobileads/BaseInterstitialActivity$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/BaseInterstitialActivity$1;-><init>(Lcom/mopub/mobileads/BaseInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object p1, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BaseInterstitialActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    if-eqz v0, :cond_7

    .line 65
    invoke-virtual {v0}, Lcom/mopub/common/CloseableLayout;->removeAllViews()V

    .line 67
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 59
    invoke-static {p0}, Lcom/mopub/common/util/Utils;->hideNavigationBar(Landroid/app/Activity;)V

    return-void
.end method

.method protected showInterstitialCloseButton()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialActivity;->mCloseableLayout:Lcom/mopub/common/CloseableLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    :cond_8
    return-void
.end method
