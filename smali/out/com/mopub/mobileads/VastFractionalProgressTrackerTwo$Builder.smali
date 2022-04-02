.class public final Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;
.super Ljava/lang/Object;
.source "VastFractionalProgressTrackerTwo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastFractionalProgressTrackerTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastFractionalProgressTrackerTwo.kt\ncom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder\n*L\n1#1,57:1\n*E\n"
.end annotation


# instance fields
.field private final content:Ljava/lang/String;

.field private isRepeatable:Z

.field private messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

.field private final trackingFraction:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .registers 4

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->content:Ljava/lang/String;

    iput p2, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->trackingFraction:F

    .line 22
    sget-object p1, Lcom/mopub/mobileads/VastTrackerTwo$MessageType;->TRACKING_URL:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    iput-object p1, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    return-void
.end method

.method private final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->content:Ljava/lang/String;

    return-object v0
.end method

.method private final component2()F
    .registers 2

    iget v0, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->trackingFraction:F

    return v0
.end method

.method public static synthetic copy$default(Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;Ljava/lang/String;FILjava/lang/Object;)Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->content:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->trackingFraction:F

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->copy(Ljava/lang/String;F)Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;
    .registers 6

    .line 27
    new-instance v0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;

    iget v1, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->trackingFraction:F

    iget-object v2, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    iget-boolean v4, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->isRepeatable:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;-><init>(FLjava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V

    return-object v0
.end method

.method public final copy(Ljava/lang/String;F)Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;
    .registers 4

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    invoke-direct {v0, p1, p2}, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;-><init>(Ljava/lang/String;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    iget-object v0, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->content:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->trackingFraction:F

    iget p1, p1, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->trackingFraction:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    return p1

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->content:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->trackingFraction:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRepeatable(Z)Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;
    .registers 3

    .line 26
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    iput-boolean p1, v0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->isRepeatable:Z

    return-object v0
.end method

.method public final messageType(Lcom/mopub/mobileads/VastTrackerTwo$MessageType;)Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;
    .registers 3

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder(content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;->trackingFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
