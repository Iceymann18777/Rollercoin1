.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AudioTrackScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitrate:I

.field private final channelCount:I

.field private final isDefaultSelectionFlag:Z

.field public final isWithinConstraints:Z

.field private final isWithinRendererCapabilities:Z

.field private final localeLanguageMatchIndex:I

.field private final localeLanguageScore:I

.field private final parameters:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

.field private final preferredLanguageScore:I

.field private final sampleRate:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;I)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "parameters",
            "formatSupport"
        }
    .end annotation

    .line 2414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2415
    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->parameters:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    const/4 v0, 0x0

    .line 2416
    invoke-static {p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    .line 2417
    iget-object p3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {p1, p3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->preferredLanguageScore:I

    .line 2418
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_1c

    const/4 p3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p3, 0x0

    :goto_1d
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isDefaultSelectionFlag:Z

    .line 2419
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    .line 2420
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    .line 2421
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    .line 2422
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    const/4 v2, -0x1

    if-eq p3, v2, :cond_36

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    if-gt p3, v3, :cond_41

    :cond_36
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-eq p3, v2, :cond_42

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget p2, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxAudioChannelCount:I

    if-gt p3, p2, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :cond_42
    :goto_42
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    .line 2426
    invoke-static {}, Landroidx/media2/exoplayer/external/util/Util;->getSystemLanguageCodes()[Ljava/lang/String;

    move-result-object p2

    const p3, 0x7fffffff

    const/4 v1, 0x0

    .line 2429
    :goto_4c
    array-length v2, p2

    if-ge v1, v2, :cond_5d

    .line 2430
    aget-object v2, p2, v1

    invoke-static {p1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5a

    move p3, v1

    move v0, v2

    goto :goto_5d

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 2437
    :cond_5d
    :goto_5d
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageMatchIndex:I

    .line 2438
    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageScore:I

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 2450
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_d

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, -0x1

    :goto_c
    return v2

    .line 2453
    :cond_d
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->preferredLanguageScore:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->preferredLanguageScore:I

    if-eq v0, v1, :cond_18

    .line 2454
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    return p1

    .line 2456
    :cond_18
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    if-eq v0, v1, :cond_23

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, -0x1

    :goto_22
    return v2

    .line 2459
    :cond_23
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->parameters:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v0, :cond_37

    .line 2460
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$400(II)I

    move-result v0

    if-eqz v0, :cond_37

    if-lez v0, :cond_36

    const/4 v2, -0x1

    :cond_36
    return v2

    .line 2465
    :cond_37
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isDefaultSelectionFlag:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isDefaultSelectionFlag:Z

    if-eq v0, v1, :cond_42

    if-eqz v0, :cond_40

    goto :goto_41

    :cond_40
    const/4 v2, -0x1

    :goto_41
    return v2

    .line 2468
    :cond_42
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageMatchIndex:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageMatchIndex:I

    if-eq v0, v1, :cond_4e

    .line 2469
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    neg-int p1, p1

    return p1

    .line 2471
    :cond_4e
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageScore:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->localeLanguageScore:I

    if-eq v0, v1, :cond_59

    .line 2472
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    return p1

    .line 2476
    :cond_59
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinConstraints:Z

    if-eqz v0, :cond_62

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->isWithinRendererCapabilities:Z

    if-eqz v0, :cond_62

    goto :goto_63

    :cond_62
    const/4 v2, -0x1

    .line 2477
    :goto_63
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->channelCount:I

    if-eq v0, v1, :cond_70

    .line 2478
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    :goto_6d
    mul-int v2, v2, p1

    return v2

    .line 2480
    :cond_70
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->sampleRate:I

    if-eq v0, v1, :cond_7b

    .line 2481
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    goto :goto_6d

    .line 2483
    :cond_7b
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    iget p1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->bitrate:I

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    goto :goto_6d
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 2400
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result p1

    return p1
.end method
