.class public Lcom/facebook/ads/AudienceNetworkActivity;
.super Landroid/app/Activity;
.source "AudienceNetworkActivity.java"


# instance fields
.field private mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

.field private final mAudienceNetworkActivityParentApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/AudienceNetworkActivity$1;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityParentApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    return-void
.end method

.method static synthetic access$001(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/os/Bundle;)V
    .registers 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1001(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$101(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method static synthetic access$201(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method static synthetic access$301(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method static synthetic access$401(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method static synthetic access$501(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/os/Bundle;)V
    .registers 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$601(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 25
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic access$701(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method static synthetic access$801(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 1

    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$901(Lcom/facebook/ads/AudienceNetworkActivity;Landroid/content/res/Configuration;)V
    .registers 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->finish(I)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 89
    invoke-static {p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityParentApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 90
    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createAudienceNetworkActivity(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;)Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 91
    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->mAudienceNetworkActivityApi:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
