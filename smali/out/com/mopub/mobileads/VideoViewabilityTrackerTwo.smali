.class public Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;
.super Lcom/mopub/mobileads/VastTrackerTwo;
.source "VideoViewabilityTrackerTwo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;,
        Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final percentViewable:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "percent_viewable"
    .end annotation
.end field

.field private final viewablePlaytimeMS:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playtime_ms"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;->Companion:Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Companion;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V
    .registers 7

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p3, p4, p5}, Lcom/mopub/mobileads/VastTrackerTwo;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V

    iput p1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;->viewablePlaytimeMS:I

    iput p2, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;->percentViewable:I

    return-void
.end method


# virtual methods
.method public final getPercentViewable()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;->percentViewable:I

    return v0
.end method

.method public final getViewablePlaytimeMS()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;->viewablePlaytimeMS:I

    return v0
.end method
