.class Lcom/mopub/mobileads/RewardedMraidActivity$2;
.super Ljava/lang/Object;
.source "RewardedMraidActivity.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/RewardedMraidActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/RewardedMraidActivity;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/RewardedMraidActivity;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity$2;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lcom/mopub/mraid/MraidBridge$MraidWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V
    .registers 4

    if-eqz p2, :cond_7

    .line 178
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity$2;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    iput-object p2, p1, Lcom/mopub/mobileads/RewardedMraidActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    goto :goto_19

    .line 180
    :cond_7
    iget-object p2, p0, Lcom/mopub/mobileads/RewardedMraidActivity$2;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    new-instance v0, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {v0, p2}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Lcom/mopub/mobileads/RewardedMraidActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 182
    iget-object p2, p0, Lcom/mopub/mobileads/RewardedMraidActivity$2;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    iget-object p2, p2, Lcom/mopub/mobileads/RewardedMraidActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$2;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-virtual {p2, v0, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;)V

    :goto_19
    return-void
.end method
