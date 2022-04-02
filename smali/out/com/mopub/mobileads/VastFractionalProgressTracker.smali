.class public Lcom/mopub/mobileads/VastFractionalProgressTracker;
.super Lcom/mopub/mobileads/VastTracker;
.source "VastFractionalProgressTracker.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/mobileads/VastTracker;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static percentagePattern:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J


# instance fields
.field private final mFraction:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tracking_fraction"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "((\\d{1,2})|(100))%"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastFractionalProgressTracker;->percentagePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;F)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastTracker;-><init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;)V

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 34
    :goto_b
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkArgument(Z)V

    .line 35
    iput p3, p0, Lcom/mopub/mobileads/VastFractionalProgressTracker;->mFraction:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .registers 4

    .line 39
    sget-object v0, Lcom/mopub/mobileads/VastTracker$MessageType;->TRACKING_URL:Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-direct {p0, v0, p1, p2}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;F)V

    return-void
.end method

.method public static isPercentageTracker(Ljava/lang/String;)Z
    .registers 2

    .line 60
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/mopub/mobileads/VastFractionalProgressTracker;->percentagePattern:Ljava/util/regex/Pattern;

    .line 63
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static parsePercentageOffset(Ljava/lang/String;I)I
    .registers 4

    .line 67
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "%"

    const-string v1, ""

    .line 69
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    int-to-float p1, p1

    .line 70
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    mul-float p1, p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/mopub/mobileads/VastFractionalProgressTracker;)I
    .registers 6

    .line 48
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->trackingFraction()F

    move-result p1

    .line 49
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->trackingFraction()F

    move-result v0

    float-to-double v0, v0

    float-to-double v2, p1

    .line 51
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 24
    check-cast p1, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->compareTo(Lcom/mopub/mobileads/VastFractionalProgressTracker;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 56
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/mopub/mobileads/VastFractionalProgressTracker;->mFraction:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->getContent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%2f: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackingFraction()F
    .registers 2

    .line 43
    iget v0, p0, Lcom/mopub/mobileads/VastFractionalProgressTracker;->mFraction:F

    return v0
.end method
