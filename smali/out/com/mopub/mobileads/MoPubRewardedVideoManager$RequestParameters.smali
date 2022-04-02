.class public final Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestParameters"
.end annotation


# instance fields
.field public final mCustomerId:Ljava/lang/String;

.field public final mKeywords:Ljava/lang/String;

.field public final mLocation:Landroid/location/Location;

.field public final mUserDataKeywords:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V
    .registers 5

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .registers 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mKeywords:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mCustomerId:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    move-object p2, p4

    .line 121
    :goto_10
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mUserDataKeywords:Ljava/lang/String;

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    move-object p3, p4

    .line 122
    :goto_16
    iput-object p3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mLocation:Landroid/location/Location;

    return-void
.end method
