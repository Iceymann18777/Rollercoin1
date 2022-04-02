.class public final Lcom/mopub/mobileads/VastCompanionAdConfigTwo;
.super Ljava/lang/Object;
.source "VastCompanionAdConfigTwo.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastCompanionAdConfigTwo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastCompanionAdConfigTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastCompanionAdConfigTwo.kt\ncom/mopub/mobileads/VastCompanionAdConfigTwo\n*L\n1#1,133:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VastCompanionAdConfigTwo$Companion;

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private final clickThroughUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clickthrough_url"
    .end annotation
.end field

.field private final clickTrackers:Ljava/util/List;
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

.field private final creativeViewTrackers:Ljava/util/List;
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

.field private final height:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private final vastResource:Lcom/mopub/mobileads/VastResourceTwo;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource"
    .end annotation
.end field

.field private final width:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->Companion:Lcom/mopub/mobileads/VastCompanionAdConfigTwo$Companion;

    return-void
.end method

.method public constructor <init>(IILcom/mopub/mobileads/VastResourceTwo;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/mopub/mobileads/VastResourceTwo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "vastResource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickTrackers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creativeViewTrackers"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->width:I

    iput p2, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->height:I

    iput-object p3, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->vastResource:Lcom/mopub/mobileads/VastResourceTwo;

    iput-object p4, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->clickThroughUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->clickTrackers:Ljava/util/List;

    iput-object p6, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->creativeViewTrackers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addClickTrackers(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->clickTrackers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addCreativeViewTrackers(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "creativeViewTrackers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->creativeViewTrackers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getClickThroughUrl()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->clickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickTrackers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->clickTrackers:Ljava/util/List;

    return-object v0
.end method

.method public final getCreativeViewTrackers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->creativeViewTrackers:Ljava/util/List;

    return-object v0
.end method

.method public final getHeight()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->height:I

    return v0
.end method

.method public final getVastResource()Lcom/mopub/mobileads/VastResourceTwo;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->vastResource:Lcom/mopub/mobileads/VastResourceTwo;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->width:I

    return v0
.end method

.method public final handleClick(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_6c

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->vastResource:Lcom/mopub/mobileads/VastResourceTwo;

    iget-object v1, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->clickThroughUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/mopub/mobileads/VastResourceTwo;->getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6b

    .line 83
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 p3, 0x0

    :goto_25
    if-eqz p3, :cond_6b

    .line 85
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 87
    sget-object v3, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v4, 0x6

    new-array v4, v4, [Lcom/mopub/common/UrlAction;

    .line 88
    sget-object v5, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v5, v4, v2

    .line 89
    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    const/4 v1, 0x2

    .line 90
    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    const/4 v1, 0x3

    .line 91
    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    const/4 v1, 0x4

    .line 92
    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    const/4 v1, 0x5

    .line 93
    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    .line 86
    invoke-virtual {v0, v3, v4}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1;

    invoke-direct {v1, p4, p1, p2}, Lcom/mopub/mobileads/VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1;-><init>(Ljava/lang/String;Landroid/content/Context;I)V

    check-cast v1, Lcom/mopub/common/UrlHandler$ResultActions;

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 126
    invoke-virtual {p2, p4}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 127
    invoke-virtual {p2}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 128
    invoke-virtual {p2}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p2

    .line 129
    invoke-virtual {p2, p1, p3}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6b
    return-void

    .line 80
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must be an activity"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final handleImpression(Landroid/content/Context;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/VastCompanionAdConfigTwo;->creativeViewTrackers:Ljava/util/List;

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    .line 65
    invoke-static {v0, v1, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
