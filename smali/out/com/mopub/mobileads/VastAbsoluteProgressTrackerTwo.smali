.class public Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;
.super Lcom/mopub/mobileads/VastTrackerTwo;
.source "VastAbsoluteProgressTrackerTwo.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Builder;,
        Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/mobileads/VastTrackerTwo;",
        "Ljava/lang/Comparable<",
        "Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;

.field private static final absolutePattern:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final trackingMilliseconds:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tracking_ms"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->Companion:Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion;

    const-string v0, "\\d{2}:\\d{2}:\\d{2}(.\\d{3})?"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->absolutePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V
    .registers 6

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2, p3, p4}, Lcom/mopub/mobileads/VastTrackerTwo;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V

    iput p1, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->trackingMilliseconds:I

    return-void
.end method

.method public static final synthetic access$getAbsolutePattern$cp()Ljava/util/regex/Pattern;
    .registers 1

    .line 12
    sget-object v0, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->absolutePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;)I
    .registers 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget v0, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->trackingMilliseconds:I

    iget p1, p1, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->trackingMilliseconds:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 12
    check-cast p1, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;)I

    move-result p1

    return p1
.end method

.method public final getTrackingMilliseconds()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->trackingMilliseconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->trackingMilliseconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
