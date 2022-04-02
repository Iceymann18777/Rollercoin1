.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AudioTrackScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitrate:I

.field private final channelCount:I

.field private final isDefaultSelectionFlag:Z

.field public final isWithinConstraints:Z

.field private final isWithinRendererCapabilities:Z

.field private final language:Ljava/lang/String;

.field private final localeLanguageMatchIndex:I

.field private final localeLanguageScore:I

.field private final parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private final preferredLanguageScore:I

.field private final sampleRate:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V
    .registers 8

    .line 2624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2625
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 2626
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->language:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2627
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    .line 2628
    iget-object p3, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 2629
    invoke-static {p1, p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->preferredLanguageScore:I

    .line 2633
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_24

    const/4 p3, 0x1

    goto :goto_25

    :cond_24
    const/4 p3, 0x0

    :goto_25
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isDefaultSelectionFlag:Z

    .line 2634
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    .line 2635
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    .line 2636
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    .line 2637
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v2, -0x1

    if-eq p3, v2, :cond_3e

    iget p3, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v3, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    if-gt p3, v3, :cond_49

    :cond_3e
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq p3, v2, :cond_4a

    iget p3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget p2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxAudioChannelCount:I

    if-gt p3, p2, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :cond_4a
    :goto_4a
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    .line 2641
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getSystemLanguageCodes()[Ljava/lang/String;

    move-result-object p2

    const p3, 0x7fffffff

    const/4 v1, 0x0

    .line 2644
    :goto_54
    array-length v2, p2

    if-ge v1, v2, :cond_65

    .line 2645
    aget-object v2, p2, v1

    .line 2646
    invoke-static {p1, v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_62

    move p3, v1

    move v0, v2

    goto :goto_65

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 2654
    :cond_65
    :goto_65
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageMatchIndex:I

    .line 2655
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageScore:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I
    .registers 6

    .line 2667
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_d

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, -0x1

    :goto_c
    return v2

    .line 2670
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->preferredLanguageScore:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->preferredLanguageScore:I

    if-eq v0, v1, :cond_18

    .line 2671
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    return p1

    .line 2673
    :cond_18
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    if-eq v0, v1, :cond_23

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, -0x1

    :goto_22
    return v2

    .line 2676
    :cond_23
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v0, :cond_37

    .line 2677
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$400(II)I

    move-result v0

    if-eqz v0, :cond_37

    if-lez v0, :cond_36

    const/4 v2, -0x1

    :cond_36
    return v2

    .line 2682
    :cond_37
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isDefaultSelectionFlag:Z

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isDefaultSelectionFlag:Z

    if-eq v0, v1, :cond_42

    if-eqz v0, :cond_40

    goto :goto_41

    :cond_40
    const/4 v2, -0x1

    :goto_41
    return v2

    .line 2685
    :cond_42
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageMatchIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageMatchIndex:I

    if-eq v0, v1, :cond_4e

    .line 2686
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    neg-int p1, p1

    return p1

    .line 2688
    :cond_4e
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageScore:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageScore:I

    if-eq v0, v1, :cond_59

    .line 2689
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    return p1

    .line 2693
    :cond_59
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    if-eqz v0, :cond_62

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    if-eqz v0, :cond_62

    goto :goto_63

    :cond_62
    const/4 v2, -0x1

    .line 2694
    :goto_63
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    if-eq v0, v1, :cond_70

    .line 2695
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    :goto_6d
    mul-int v2, v2, p1

    return v2

    .line 2697
    :cond_70
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    if-eq v0, v1, :cond_7b

    .line 2698
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    goto :goto_6d

    .line 2700
    :cond_7b
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->language:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->language:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 2702
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    goto :goto_6d

    :cond_8e
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 2605
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result p1

    return p1
.end method
