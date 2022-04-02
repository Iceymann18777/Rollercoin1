.class synthetic Lcom/mopub/mobileads/MoPubRewardedVideoManager$15;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 573
    invoke-static {}, Lcom/mopub/network/MoPubNetworkError$Reason;->values()[Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$15;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    :try_start_9
    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->NO_FILL:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$15;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$15;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$15;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_HEADER_DATA:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
