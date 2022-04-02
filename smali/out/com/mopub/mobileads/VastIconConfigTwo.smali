.class public Lcom/mopub/mobileads/VastIconConfigTwo;
.super Ljava/lang/Object;
.source "VastIconConfigTwo.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastIconConfigTwo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastIconConfigTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastIconConfigTwo.kt\ncom/mopub/mobileads/VastIconConfigTwo\n*L\n1#1,129:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VastIconConfigTwo$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final clickThroughUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clickthrough_url"
    .end annotation
.end field

.field private final clickTrackingUris:Ljava/util/List;
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

.field private final durationMS:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration_ms"
    .end annotation
.end field

.field private final height:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private final offsetMS:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skip_offset_ms"
    .end annotation
.end field

.field private final vastResource:Lcom/mopub/mobileads/VastResourceTwo;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource"
    .end annotation
.end field

.field private final viewTrackingUris:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_viewability_tracker"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
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

    new-instance v0, Lcom/mopub/mobileads/VastIconConfigTwo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastIconConfigTwo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastIconConfigTwo;->Companion:Lcom/mopub/mobileads/VastIconConfigTwo$Companion;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResourceTwo;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/mopub/mobileads/VastResourceTwo;",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "vastResource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickTrackingUris"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewTrackingUris"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->width:I

    iput p2, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->height:I

    iput-object p4, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->durationMS:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->vastResource:Lcom/mopub/mobileads/VastResourceTwo;

    iput-object p6, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->clickTrackingUris:Ljava/util/List;

    iput-object p7, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->clickThroughUri:Ljava/lang/String;

    iput-object p8, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->viewTrackingUris:Ljava/util/List;

    if-eqz p3, :cond_27

    .line 46
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    iput p1, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->offsetMS:I

    return-void
.end method


# virtual methods
.method public getClickThroughUri()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->clickThroughUri:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackingUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->clickTrackingUris:Ljava/util/List;

    return-object v0
.end method

.method public getDurationMS()Ljava/lang/Integer;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->durationMS:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->height:I

    return v0
.end method

.method public getOffsetMS()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->offsetMS:I

    return v0
.end method

.method public getVastResource()Lcom/mopub/mobileads/VastResourceTwo;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->vastResource:Lcom/mopub/mobileads/VastResourceTwo;

    return-object v0
.end method

.method public getViewTrackingUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTrackerTwo;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->viewTrackingUris:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfigTwo;->width:I

    return v0
.end method

.method public handleClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastIconConfigTwo;->getVastResource()Lcom/mopub/mobileads/VastResourceTwo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastIconConfigTwo;->getClickThroughUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mopub/mobileads/VastResourceTwo;->getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_53

    .line 83
    move-object v0, p2

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
    const/4 p2, 0x0

    :goto_25
    if-eqz p2, :cond_53

    .line 86
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 88
    sget-object v3, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/mopub/common/UrlAction;

    .line 89
    sget-object v5, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v5, v4, v2

    .line 90
    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v2, v4, v1

    .line 87
    invoke-virtual {v0, v3, v4}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/mopub/mobileads/VastIconConfigTwo$handleClick$$inlined$let$lambda$1;

    invoke-direct {v1, p3, p1}, Lcom/mopub/mobileads/VastIconConfigTwo$handleClick$$inlined$let$lambda$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    check-cast v1, Lcom/mopub/common/UrlHandler$ResultActions;

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p3

    .line 119
    invoke-virtual {p3}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p3

    .line 120
    invoke-virtual {p3}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p3

    .line 121
    invoke-virtual {p3, p1, p2}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_53
    return-void
.end method

.method public handleImpression(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetUri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastIconConfigTwo;->getViewTrackingUris()Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    .line 60
    invoke-static {v0, v1, p2, p3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingTwoHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
