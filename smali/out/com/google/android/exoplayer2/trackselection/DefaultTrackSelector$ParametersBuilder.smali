.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParametersBuilder"
.end annotation


# instance fields
.field private allowAudioMixedChannelCountAdaptiveness:Z

.field private allowAudioMixedMimeTypeAdaptiveness:Z

.field private allowAudioMixedSampleRateAdaptiveness:Z

.field private allowVideoMixedMimeTypeAdaptiveness:Z

.field private allowVideoNonSeamlessAdaptiveness:Z

.field private exceedAudioConstraintsIfNecessary:Z

.field private exceedRendererCapabilitiesIfNecessary:Z

.field private exceedVideoConstraintsIfNecessary:Z

.field private forceHighestSupportedBitrate:Z

.field private forceLowestBitrate:Z

.field private maxAudioBitrate:I

.field private maxAudioChannelCount:I

.field private maxVideoBitrate:I

.field private maxVideoFrameRate:I

.field private maxVideoHeight:I

.field private maxVideoWidth:I

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field private tunnelingAudioSessionId:I

.field private viewportHeight:I

.field private viewportOrientationMayChange:Z

.field private viewportWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>()V

    .line 202
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setInitialValuesWithoutContext()V

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    .line 204
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private setInitialValuesWithoutContext()V
    .registers 4

    const v0, 0x7fffffff

    .line 761
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoWidth:I

    .line 762
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoHeight:I

    .line 763
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoFrameRate:I

    .line 764
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoBitrate:I

    const/4 v1, 0x1

    .line 765
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    const/4 v2, 0x0

    .line 766
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 767
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoNonSeamlessAdaptiveness:Z

    .line 768
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportWidth:I

    .line 769
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportHeight:I

    .line 770
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportOrientationMayChange:Z

    .line 772
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioChannelCount:I

    .line 773
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioBitrate:I

    .line 774
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedAudioConstraintsIfNecessary:Z

    .line 775
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 776
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 777
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 779
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->forceLowestBitrate:Z

    .line 780
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->forceHighestSupportedBitrate:Z

    .line 781
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    .line 782
    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingAudioSessionId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .registers 32

    move-object/from16 v0, p0

    .line 725
    new-instance v29, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-object/from16 v1, v29

    iget v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoWidth:I

    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoHeight:I

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoFrameRate:I

    iget v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoBitrate:I

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedMimeTypeAdaptiveness:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoNonSeamlessAdaptiveness:Z

    iget v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportWidth:I

    iget v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportHeight:I

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportOrientationMayChange:Z

    iget-object v12, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredAudioLanguage:Ljava/lang/String;

    iget v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioChannelCount:I

    iget v14, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioBitrate:I

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedAudioConstraintsIfNecessary:Z

    move-object/from16 v30, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedMimeTypeAdaptiveness:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedSampleRateAdaptiveness:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedChannelCountAdaptiveness:Z

    move/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredTextLanguage:Ljava/lang/String;

    move-object/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredTextRoleFlags:I

    move/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectUndeterminedTextLanguage:Z

    move/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->disabledTextTrackSelectionFlags:I

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->forceLowestBitrate:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->forceHighestSupportedBitrate:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    move/from16 v25, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingAudioSessionId:I

    move/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v1

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v28}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZZLjava/lang/String;IZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-object v29
.end method

.method public bridge synthetic build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method
