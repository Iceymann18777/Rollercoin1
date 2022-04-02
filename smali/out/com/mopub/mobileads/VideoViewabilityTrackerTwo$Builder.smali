.class public final Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;
.super Ljava/lang/Object;
.source "VideoViewabilityTrackerTwo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoViewabilityTrackerTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoViewabilityTrackerTwo.kt\ncom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder\n*L\n1#1,42:1\n*E\n"
.end annotation


# instance fields
.field private final content:Ljava/lang/String;

.field private isRepeatable:Z

.field private messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

.field private final percentViewable:I

.field private final viewablePlaytimeMS:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->content:Ljava/lang/String;

    iput p2, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->viewablePlaytimeMS:I

    iput p3, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->percentViewable:I

    .line 24
    sget-object p1, Lcom/mopub/mobileads/VastTrackerTwo$MessageType;->TRACKING_URL:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    iput-object p1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    return-void
.end method

.method private final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->content:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;Ljava/lang/String;IIILjava/lang/Object;)Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->content:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->viewablePlaytimeMS:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->percentViewable:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->copy(Ljava/lang/String;II)Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;
    .registers 8

    .line 29
    new-instance v6, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;

    .line 30
    iget v1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->viewablePlaytimeMS:I

    .line 31
    iget v2, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->percentViewable:I

    .line 32
    iget-object v3, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->content:Ljava/lang/String;

    .line 33
    iget-object v4, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    .line 34
    iget-boolean v5, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->isRepeatable:Z

    move-object v0, v6

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo;-><init>(IILjava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V

    return-object v6
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->viewablePlaytimeMS:I

    return v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->percentViewable:I

    return v0
.end method

.method public final copy(Ljava/lang/String;II)Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;
    .registers 5

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;

    invoke-direct {v0, p1, p2, p3}, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_21

    instance-of v0, p1, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;

    iget-object v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->content:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->viewablePlaytimeMS:I

    iget v1, p1, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->viewablePlaytimeMS:I

    if-ne v0, v1, :cond_1f

    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->percentViewable:I

    iget p1, p1, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->percentViewable:I

    if-ne v0, p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    return p1

    :cond_21
    :goto_21
    const/4 p1, 0x1

    return p1
.end method

.method public final getPercentViewable()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->percentViewable:I

    return v0
.end method

.method public final getViewablePlaytimeMS()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->viewablePlaytimeMS:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->content:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->viewablePlaytimeMS:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->percentViewable:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRepeatable(Z)Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;
    .registers 3

    .line 28
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;

    iput-boolean p1, v0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->isRepeatable:Z

    return-object v0
.end method

.method public final messageType(Lcom/mopub/mobileads/VastTrackerTwo$MessageType;)Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;
    .registers 3

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder(content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", viewablePlaytimeMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->viewablePlaytimeMS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percentViewable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/mobileads/VideoViewabilityTrackerTwo$Builder;->percentViewable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
