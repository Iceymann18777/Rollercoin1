.class Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;
.super Ljava/lang/Object;
.source "StartAppCustomEvent.java"

# interfaces
.implements Lcom/startapp/android/publish/ads/banner/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/mediation/admob/StartAppCustomEvent;->requestBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/mediation/admob/StartAppCustomEvent;

.field final synthetic val$frameLayout:Landroid/widget/FrameLayout;

.field final synthetic val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/startapp/android/mediation/admob/StartAppCustomEvent;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/widget/FrameLayout;)V
    .registers 4

    .line 121
    iput-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;->this$0:Lcom/startapp/android/mediation/admob/StartAppCustomEvent;

    iput-object p2, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    iput-object p3, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;->val$frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 135
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onClick()V

    .line 136
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onPresentScreen()V

    .line 137
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onLeaveApplication()V

    return-void
.end method

.method public onFailedToReceiveAd(Landroid/view/View;)V
    .registers 2

    .line 130
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    return-void
.end method

.method public onReceiveAd(Landroid/view/View;)V
    .registers 3

    .line 125
    iget-object p1, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v0, p0, Lcom/startapp/android/mediation/admob/StartAppCustomEvent$3;->val$frameLayout:Landroid/widget/FrameLayout;

    invoke-interface {p1, v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    return-void
.end method
