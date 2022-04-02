.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$11;
.super Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 776
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected forEach(Ljava/lang/String;)V
    .registers 2

    .line 779
    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$800(Ljava/lang/String;)V

    return-void
.end method
