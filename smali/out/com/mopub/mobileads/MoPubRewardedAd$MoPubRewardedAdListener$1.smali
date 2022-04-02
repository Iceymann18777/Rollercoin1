.class Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener$1;
.super Ljava/lang/Object;
.source "MoPubRewardedAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedAd;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;

.field final synthetic val$this$0:Lcom/mopub/mobileads/MoPubRewardedAd;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;Lcom/mopub/mobileads/MoPubRewardedAd;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener$1;->this$1:Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener$1;->val$this$0:Lcom/mopub/mobileads/MoPubRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 135
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->EXPIRED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "time in seconds"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener$1;->this$1:Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method
