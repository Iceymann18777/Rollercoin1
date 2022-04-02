.class public Lcom/mopub/mobileads/VastVideoConfigTwo;
.super Ljava/lang/Object;
.source "VastVideoConfigTwo.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastVideoConfigTwo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastVideoConfigTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastVideoConfigTwo.kt\ncom/mopub/mobileads/VastVideoConfigTwo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,671:1\n1591#2,2:672\n1591#2,2:674\n1313#2:676\n1382#2,3:677\n1313#2:680\n1382#2,3:681\n1313#2:684\n1382#2,3:685\n*E\n*S KotlinDebug\n*F\n+ 1 VastVideoConfigTwo.kt\ncom/mopub/mobileads/VastVideoConfigTwo\n*L\n566#1,2:672\n566#1,2:674\n638#1:676\n638#1,3:677\n648#1:680\n648#1,3:681\n654#1:684\n654#1,3:685\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VastVideoConfigTwo$Companion;

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private final _absoluteTrackers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "absolute_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;",
            ">;"
        }
    .end annotation
.end field

.field private final _avidJavascriptResources:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avid_javascript_resources"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _clickTrackers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "click_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation
.end field

.field private final _closeTrackers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "close_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation
.end field

.field private final _completeTrackers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "complete_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation
.end field

.field private final _errorTrackers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation
.end field

.field private final _externalViewabilityTrackers:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_viewability_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _fractionalTrackers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fractional_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;",
            ">;"
        }
    .end annotation
.end field

.field private final _impressionTrackers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "impression_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation
.end field

.field private final _moatImpressionPixels:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moat_impression_pixels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _pauseTrackers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pause_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation
.end field

.field private final _resumeTrackers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resume_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation
.end field

.field private final _skipTrackers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skip_trackers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation
.end field

.field private clickThroughUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clickthrough_url"
    .end annotation
.end field

.field private customCloseIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_close_icon_url"
    .end annotation
.end field

.field private customCtaText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_cta_text"
    .end annotation
.end field

.field private customSkipText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_skip_text"
    .end annotation
.end field

.field private diskMediaFileUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disk_media_file_url"
    .end annotation
.end field

.field private dspCreativeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dsp_creative_id"
    .end annotation
.end field

.field private enableClickExperiment:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_click_exp"
    .end annotation
.end field

.field private isRewarded:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_rewarded"
    .end annotation
.end field

.field private landscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "landscape_companion_ad"
    .end annotation
.end field

.field private networkMediaFileUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "network_media_file_url"
    .end annotation
.end field

.field private portraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "portrait_companion_ad"
    .end annotation
.end field

.field private privacyInformationIconClickthroughUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "privacy_icon_click_url"
    .end annotation
.end field

.field private privacyInformationIconImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "privacy_icon_image_url"
    .end annotation
.end field

.field private skipOffset:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skip_offset"
    .end annotation
.end field

.field private vastIconConfig:Lcom/mopub/mobileads/VastIconConfigTwo;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_config"
    .end annotation
.end field

.field private videoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_viewability_tracker"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mopub/mobileads/VastVideoConfigTwo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastVideoConfigTwo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastVideoConfigTwo;->Companion:Lcom/mopub/mobileads/VastVideoConfigTwo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_impressionTrackers:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_pauseTrackers:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_resumeTrackers:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_completeTrackers:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_closeTrackers:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_skipTrackers:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_clickTrackers:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_errorTrackers:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_fractionalTrackers:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_absoluteTrackers:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_externalViewabilityTrackers:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_avidJavascriptResources:Ljava/util/Set;

    .line 126
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_moatImpressionPixels:Ljava/util/Set;

    return-void
.end method

.method private addCompanionAdClickTrackersForUrls(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 666
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfigTwo;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 667
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->landscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    if-eqz v0, :cond_e

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->addClickTrackers(Ljava/util/Collection;)V

    .line 668
    :cond_e
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->portraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    if-eqz v0, :cond_17

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->addClickTrackers(Ljava/util/Collection;)V

    :cond_17
    return-void
.end method

.method private addCompanionAdViewTrackersForUrls(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 660
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfigTwo;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 661
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->landscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    if-eqz v0, :cond_e

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->addCreativeViewTrackers(Ljava/util/Collection;)V

    .line 662
    :cond_e
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->portraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    if-eqz v0, :cond_17

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->addCreativeViewTrackers(Ljava/util/Collection;)V

    :cond_17
    return-void
.end method

.method private addCompleteTrackersForUrls(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 644
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfigTwo;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoConfigTwo;->addCompleteTrackers(Ljava/util/List;)V

    return-void
.end method

.method private addFractionalTrackersForUrls(Ljava/util/List;F)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    .line 654
    check-cast p1, Ljava/lang/Iterable;

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 685
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 686
    check-cast v1, Ljava/lang/String;

    .line 655
    new-instance v2, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    invoke-direct {v2, v1, p2}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 687
    :cond_2c
    check-cast v0, Ljava/util/List;

    .line 654
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->addFractionalTrackers(Ljava/util/List;)V

    return-void
.end method

.method private addStartTrackersForUrls(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 648
    check-cast p1, Ljava/lang/Iterable;

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 681
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 682
    check-cast v1, Ljava/lang/String;

    .line 649
    new-instance v2, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Builder;->build()Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 683
    :cond_2d
    check-cast v0, Ljava/util/List;

    .line 648
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->addAbsoluteTrackers(Ljava/util/List;)V

    return-void
.end method

.method private createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 638
    check-cast p1, Ljava/lang/Iterable;

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 677
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 678
    check-cast v1, Ljava/lang/String;

    .line 639
    new-instance v2, Lcom/mopub/mobileads/VastTrackerTwo$Builder;

    invoke-direct {v2, v1}, Lcom/mopub/mobileads/VastTrackerTwo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->build()Lcom/mopub/mobileads/VastTrackerTwo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 679
    :cond_2c
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private handleClick(Landroid/content/Context;ILjava/lang/Integer;)V
    .registers 9

    .line 391
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_clickTrackers:Ljava/util/List;

    .line 393
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 394
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 390
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 397
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getClickThroughUrl()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_21

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p2, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p2, 0x1

    :goto_22
    if-eqz p2, :cond_25

    return-void

    .line 401
    :cond_25
    new-instance p2, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {p2}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 402
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 403
    invoke-virtual {p2}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 405
    sget-object v2, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/mopub/common/UrlAction;

    .line 406
    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v4, v3, v0

    .line 407
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v0, v3, v1

    const/4 v0, 0x2

    .line 408
    sget-object v1, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v1, v3, v0

    const/4 v0, 0x3

    .line 409
    sget-object v1, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v1, v3, v0

    const/4 v0, 0x4

    .line 410
    sget-object v1, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v1, v3, v0

    const/4 v0, 0x5

    .line 411
    sget-object v1, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v1, v3, v0

    .line 404
    invoke-virtual {p2, v2, v3}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 413
    new-instance v0, Lcom/mopub/mobileads/VastVideoConfigTwo$handleClick$urlHandler$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/mopub/mobileads/VastVideoConfigTwo$handleClick$urlHandler$1;-><init>(Lcom/mopub/mobileads/VastVideoConfigTwo;Landroid/content/Context;Ljava/lang/Integer;)V

    check-cast v0, Lcom/mopub/common/UrlHandler$ResultActions;

    invoke-virtual {p2, v0}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 450
    invoke-virtual {p2}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p2

    .line 452
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getClickThroughUrl()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_73

    invoke-virtual {p2, p1, p3}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_73
    return-void
.end method

.method private hydrateUrls(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 627
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 628
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_10
    if-ge v1, v2, :cond_28

    .line 629
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "%%VIDEO_EVENT%%"

    move-object v5, p1

    .line 631
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_28
    return-object v0
.end method


# virtual methods
.method public addAbsoluteTrackers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "absoluteTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_absoluteTrackers:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_absoluteTrackers:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    return-void
.end method

.method public addAvidJavascriptResources(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 250
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_avidJavascriptResources:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-void
.end method

.method public addClickTrackers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_clickTrackers:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCloseTrackers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closeTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_closeTrackers:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCompleteTrackers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completeTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_completeTrackers:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addErrorTrackers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "errorTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_errorTrackers:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addExternalViewabilityTrackers(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 246
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_externalViewabilityTrackers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public addFractionalTrackers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fractionalTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_fractionalTrackers:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_fractionalTrackers:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    return-void
.end method

.method public addImpressionTrackers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "impressionTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_impressionTrackers:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addMoatImpressionPixels(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 254
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_moatImpressionPixels:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-void
.end method

.method public addPauseTrackers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pauseTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_pauseTrackers:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addResumeTrackers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "resumeTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_resumeTrackers:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addSkipTrackers(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "skipTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_skipTrackers:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addVideoTrackers(Lorg/json/JSONObject;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "urls"

    .line 281
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "events"

    .line 283
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz v0, :cond_72

    if-nez p1, :cond_14

    goto :goto_72

    .line 288
    :cond_14
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v1, :cond_72

    .line 289
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-direct {p0, v4, v0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->hydrateUrls(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 291
    sget-object v6, Lcom/mopub/mobileads/VideoTrackingEvent;->Companion:Lcom/mopub/mobileads/VideoTrackingEvent$Companion;

    invoke-virtual {v6, v4}, Lcom/mopub/mobileads/VideoTrackingEvent$Companion;->fromString(Ljava/lang/String;)Lcom/mopub/mobileads/VideoTrackingEvent;

    move-result-object v6

    if-eqz v4, :cond_6f

    if-nez v5, :cond_2f

    goto :goto_6f

    .line 295
    :cond_2f
    sget-object v7, Lcom/mopub/mobileads/VastVideoConfigTwo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_74

    .line 302
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast v5, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered unknown video tracking event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_6f

    .line 301
    :pswitch_58
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfigTwo;->addCompanionAdClickTrackersForUrls(Ljava/util/List;)V

    goto :goto_6f

    .line 300
    :pswitch_5c
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfigTwo;->addCompanionAdViewTrackersForUrls(Ljava/util/List;)V

    goto :goto_6f

    .line 299
    :pswitch_60
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfigTwo;->addCompleteTrackersForUrls(Ljava/util/List;)V

    goto :goto_6f

    .line 298
    :pswitch_64
    invoke-virtual {v6}, Lcom/mopub/mobileads/VideoTrackingEvent;->toFloat()F

    move-result v4

    invoke-direct {p0, v5, v4}, Lcom/mopub/mobileads/VastVideoConfigTwo;->addFractionalTrackersForUrls(Ljava/util/List;F)V

    goto :goto_6f

    .line 296
    :pswitch_6c
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfigTwo;->addStartTrackersForUrls(Ljava/util/List;)V

    :cond_6f
    :goto_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_72
    :goto_72
    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
    .end packed-switch
.end method

.method public getAbsoluteTrackers()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_absoluteTrackers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAvidJavascriptResources()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_avidJavascriptResources:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->clickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_clickTrackers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCloseTrackers()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_closeTrackers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCompleteTrackers()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_completeTrackers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCustomCloseIconUrl()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->customCloseIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomCtaText()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->customCtaText:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomSkipText()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->customSkipText:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskMediaFileUrl()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->diskMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->dspCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableClickExperiment()Z
    .registers 2

    .line 157
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->enableClickExperiment:Z

    return v0
.end method

.method public getErrorTrackers()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_errorTrackers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExternalViewabilityTrackers()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_externalViewabilityTrackers:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getFractionalTrackers()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_fractionalTrackers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_impressionTrackers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMoatImpressionPixels()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_moatImpressionPixels:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getNetworkMediaFileUrl()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->networkMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseTrackers()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_pauseTrackers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPrivacyInformationIconClickthroughUrl()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->privacyInformationIconClickthroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyInformationIconImageUrl()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->privacyInformationIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingProgressTrackerCount()I
    .registers 2

    const v0, 0x7fffffff

    .line 596
    invoke-virtual {p0, v0, v0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResumeTrackers()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_resumeTrackers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSkipOffset()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->skipOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipOffsetMillis(I)Ljava/lang/Integer;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 607
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 609
    sget-object v2, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->Companion:Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 610
    sget-object v2, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->Companion:Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_44

    .line 611
    :cond_16
    sget-object v2, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;->Companion:Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Companion;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Companion;->isPercentageTracker(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 612
    sget-object v2, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;->Companion:Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Companion;

    invoke-virtual {v2, v0, p1}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Companion;->parsePercentageOffset(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_44

    .line 614
    :cond_25
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast v2, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid VAST skipoffset format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_44
    if-eqz v0, :cond_55

    .line 617
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 618
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v1, p1

    :cond_55
    return-object v1
.end method

.method public getSkipTrackers()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_skipTrackers:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUntriggeredTrackersBefore(II)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    if-lez p2, :cond_6c

    if-gez p1, :cond_5

    goto :goto_6c

    .line 566
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 567
    new-instance v1, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Builder;

    const-string v2, ""

    invoke-direct {v1, v2, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Builder;-><init>(Ljava/lang/String;I)V

    .line 569
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Builder;->build()Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;

    move-result-object v1

    .line 571
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_absoluteTrackers:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 672
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;

    .line 572
    invoke-virtual {v4, v1}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;)I

    move-result v5

    if-gtz v5, :cond_1d

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->isTracked()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 573
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 577
    :cond_39
    new-instance v1, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-direct {v1, v2, p1}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;-><init>(Ljava/lang/String;F)V

    .line 580
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->build()Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;

    move-result-object p1

    .line 582
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_fractionalTrackers:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 674
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4d
    :goto_4d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;

    .line 583
    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;->compareTo(Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;)I

    move-result v2

    if-gtz v2, :cond_4d

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;->isTracked()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 584
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 566
    :cond_69
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 563
    :cond_6c
    :goto_6c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfigTwo;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    .line 319
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->landscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    goto :goto_e

    .line 318
    :cond_9
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->landscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    goto :goto_e

    .line 317
    :cond_c
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->portraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    :goto_e
    return-object p1
.end method

.method public getVastIconConfig()Lcom/mopub/mobileads/VastIconConfigTwo;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->vastIconConfig:Lcom/mopub/mobileads/VastIconConfigTwo;

    return-object v0
.end method

.method public getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->videoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;

    return-object v0
.end method

.method public handleClickForResult(Landroid/app/Activity;II)V
    .registers 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    check-cast p1, Landroid/content/Context;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/mobileads/VastVideoConfigTwo;->handleClick(Landroid/content/Context;ILjava/lang/Integer;)V

    return-void
.end method

.method public handleClickWithoutResult(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->handleClick(Landroid/content/Context;ILjava/lang/Integer;)V

    return-void
.end method

.method public handleClose(Landroid/content/Context;I)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_closeTrackers:Ljava/util/List;

    .line 497
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 498
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 494
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleComplete(Landroid/content/Context;I)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_completeTrackers:Ljava/util/List;

    .line 529
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 530
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 526
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_errorTrackers:Ljava/util/List;

    .line 546
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 547
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-static {v0, p2, p3, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleImpression(Landroid/content/Context;I)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_impressionTrackers:Ljava/util/List;

    .line 343
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 344
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 340
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handlePause(Landroid/content/Context;I)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_pauseTrackers:Ljava/util/List;

    .line 481
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 482
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 478
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleResume(Landroid/content/Context;I)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_resumeTrackers:Ljava/util/List;

    .line 465
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 466
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 462
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleSkip(Landroid/content/Context;I)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->_skipTrackers:Ljava/util/List;

    .line 513
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 514
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfigTwo;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 510
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public hasCompanionAd()Z
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->landscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->portraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isRewarded()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->isRewarded:Z

    return v0
.end method

.method public setClickThroughUrl(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->clickThroughUrl:Ljava/lang/String;

    return-void
.end method

.method public setCustomCloseIconUrl(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 175
    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->customCloseIconUrl:Ljava/lang/String;

    :goto_5
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->customCloseIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setCustomCtaText(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 163
    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->customCtaText:Ljava/lang/String;

    :goto_5
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->customCtaText:Ljava/lang/String;

    return-void
.end method

.method public setCustomSkipText(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 169
    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->customSkipText:Ljava/lang/String;

    :goto_5
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->customSkipText:Ljava/lang/String;

    return-void
.end method

.method public setDiskMediaFileUrl(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->diskMediaFileUrl:Ljava/lang/String;

    return-void
.end method

.method public setDspCreativeId(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 188
    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->dspCreativeId:Ljava/lang/String;

    :goto_5
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->dspCreativeId:Ljava/lang/String;

    return-void
.end method

.method public setEnableClickExperiment(Z)V
    .registers 2

    .line 157
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->enableClickExperiment:Z

    return-void
.end method

.method public setNetworkMediaFileUrl(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->networkMediaFileUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrivacyInformationIconClickthroughUrl(Ljava/lang/String;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->privacyInformationIconClickthroughUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrivacyInformationIconImageUrl(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 193
    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->privacyInformationIconImageUrl:Ljava/lang/String;

    :goto_5
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->privacyInformationIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setRewarded$mopub_sdk_base_release(Z)V
    .registers 2

    .line 153
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->isRewarded:Z

    return-void
.end method

.method public setSkipOffset$mopub_sdk_base_release(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->skipOffset:Ljava/lang/String;

    :goto_5
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->skipOffset:Ljava/lang/String;

    return-void
.end method

.method public setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfigTwo;Lcom/mopub/mobileads/VastCompanionAdConfigTwo;)V
    .registers 3

    .line 311
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->landscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    .line 312
    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->portraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfigTwo;

    return-void
.end method

.method public setVastIconConfig(Lcom/mopub/mobileads/VastIconConfigTwo;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->vastIconConfig:Lcom/mopub/mobileads/VastIconConfigTwo;

    return-void
.end method

.method public setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 181
    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->videoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;

    :goto_5
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfigTwo;->videoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;

    return-void
.end method
