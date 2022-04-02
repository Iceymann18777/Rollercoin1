.class Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;
.super Landroid/util/Pair;
.source "RewardedAdData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/RewardedAdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoPartKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair<",
        "Ljava/lang/Class<",
        "+",
        "Lcom/mopub/mobileads/CustomEventRewardedAd;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final adNetworkId:Ljava/lang/String;

.field final customEventClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
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

    .line 354
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;->customEventClass:Ljava/lang/Class;

    .line 357
    iput-object p2, p0, Lcom/mopub/mobileads/RewardedAdData$TwoPartKey;->adNetworkId:Ljava/lang/String;

    return-void
.end method
