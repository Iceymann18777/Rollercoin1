.class abstract Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ForEachMoPubIdRunnable"
.end annotation


# instance fields
.field private final mCustomEventClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private final mThirdPartyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 921
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 922
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mCustomEventClass:Ljava/lang/Class;

    .line 923
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mThirdPartyId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract forEach(Ljava/lang/String;)V
.end method

.method public run()V
    .registers 4

    .line 930
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$900(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mCustomEventClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mThirdPartyId:Ljava/lang/String;

    .line 931
    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubIdsForAdNetwork(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 932
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 933
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->forEach(Ljava/lang/String;)V

    goto :goto_14

    :cond_24
    return-void
.end method
