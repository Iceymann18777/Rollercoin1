.class Lcom/mopub/mobileads/MoPubInterstitial$1;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial$1;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 103
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Expiring unused Interstitial ad."

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$1;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    sget-object v2, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-virtual {v0, v2, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;Z)Z

    .line 105
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial$1;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->access$000(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial$1;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 106
    invoke-static {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->access$000(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 109
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$1;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->access$100(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->adFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_3b
    return-void
.end method
