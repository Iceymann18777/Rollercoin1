.class Lcom/mopub/mobileads/VastIconConfig;
.super Ljava/lang/Object;
.source "VastIconConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mClickThroughUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clickthrough_url"
    .end annotation
.end field

.field private final mClickTrackingUris:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "click_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mDurationMS:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration_ms"
    .end annotation
.end field

.field private final mHeight:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private final mOffsetMS:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skip_offset_ms"
    .end annotation
.end field

.field private final mVastResource:Lcom/mopub/mobileads/VastResource;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource"
    .end annotation
.end field

.field private final mViewTrackingUris:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_viewability_tracker"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field


# direct methods
.method constructor <init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/mopub/mobileads/VastResource;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    invoke-static {p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    invoke-static {p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    iput p1, p0, Lcom/mopub/mobileads/VastIconConfig;->mWidth:I

    .line 67
    iput p2, p0, Lcom/mopub/mobileads/VastIconConfig;->mHeight:I

    if-nez p3, :cond_14

    const/4 p1, 0x0

    goto :goto_18

    .line 68
    :cond_14
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_18
    iput p1, p0, Lcom/mopub/mobileads/VastIconConfig;->mOffsetMS:I

    .line 69
    iput-object p4, p0, Lcom/mopub/mobileads/VastIconConfig;->mDurationMS:Ljava/lang/Integer;

    .line 70
    iput-object p5, p0, Lcom/mopub/mobileads/VastIconConfig;->mVastResource:Lcom/mopub/mobileads/VastResource;

    .line 71
    iput-object p6, p0, Lcom/mopub/mobileads/VastIconConfig;->mClickTrackingUris:Ljava/util/List;

    .line 72
    iput-object p7, p0, Lcom/mopub/mobileads/VastIconConfig;->mClickThroughUri:Ljava/lang/String;

    .line 73
    iput-object p8, p0, Lcom/mopub/mobileads/VastIconConfig;->mViewTrackingUris:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getClickThroughUri()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mClickThroughUri:Ljava/lang/String;

    return-object v0
.end method

.method getClickTrackingUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mClickTrackingUris:Ljava/util/List;

    return-object v0
.end method

.method getDurationMS()Ljava/lang/Integer;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mDurationMS:Ljava/lang/Integer;

    return-object v0
.end method

.method getHeight()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mHeight:I

    return v0
.end method

.method getOffsetMS()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mOffsetMS:I

    return v0
.end method

.method getVastResource()Lcom/mopub/mobileads/VastResource;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mVastResource:Lcom/mopub/mobileads/VastResource;

    return-object v0
.end method

.method getViewTrackingUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mViewTrackingUris:Ljava/util/List;

    return-object v0
.end method

.method getWidth()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mWidth:I

    return v0
.end method

.method handleClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 157
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mVastResource:Lcom/mopub/mobileads/VastResource;

    iget-object v1, p0, Lcom/mopub/mobileads/VastIconConfig;->mClickThroughUri:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/mopub/mobileads/VastResource;->getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 167
    :cond_12
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VastIconConfig$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/mopub/mobileads/VastIconConfig$1;-><init>(Lcom/mopub/mobileads/VastIconConfig;Ljava/lang/String;Landroid/content/Context;)V

    .line 172
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p3

    .line 197
    invoke-virtual {p3}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p3

    .line 198
    invoke-virtual {p3}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p3

    .line 199
    invoke-virtual {p3, p1, p2}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method handleImpression(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .line 136
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 137
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mViewTrackingUris:Ljava/util/List;

    .line 142
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    .line 139
    invoke-static {v0, v1, p2, p3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
