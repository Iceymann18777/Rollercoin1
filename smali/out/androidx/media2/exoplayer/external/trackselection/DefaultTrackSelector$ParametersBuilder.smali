.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;
.super Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParametersBuilder"
.end annotation


# instance fields
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
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
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

    .line 198
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialValues"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;-><init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;)V

    .line 208
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoWidth:I

    .line 209
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoHeight:I

    .line 210
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoFrameRate:I

    .line 211
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoBitrate:I

    .line 212
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    .line 213
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 214
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoNonSeamlessAdaptiveness:Z

    .line 215
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportWidth:I

    .line 216
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportHeight:I

    .line 217
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportOrientationMayChange:Z

    .line 219
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxAudioChannelCount:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioChannelCount:I

    .line 220
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioBitrate:I

    .line 221
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedAudioConstraintsIfNecessary:Z

    .line 222
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 223
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 225
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->forceLowestBitrate:Z

    .line 226
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->forceHighestSupportedBitrate:Z

    .line 227
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    .line 228
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingAudioSessionId:I

    .line 230
    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->access$000(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->cloneSelectionOverrides(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    .line 231
    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->access$100(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$1;)V
    .registers 3

    .line 168
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method private static cloneSelectionOverrides(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectionOverrides"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation

    .line 652
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 653
    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 654
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_21
    return-object v0
.end method


# virtual methods
.method public build()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .registers 30

    move-object/from16 v0, p0

    .line 618
    new-instance v27, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-object/from16 v1, v27

    iget v2, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoWidth:I

    iget v3, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoHeight:I

    iget v4, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoFrameRate:I

    iget v5, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoBitrate:I

    iget-boolean v6, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedMimeTypeAdaptiveness:Z

    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoNonSeamlessAdaptiveness:Z

    iget v9, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportWidth:I

    iget v10, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportHeight:I

    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportOrientationMayChange:Z

    iget-object v12, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredAudioLanguage:Ljava/lang/String;

    iget v13, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioChannelCount:I

    iget v14, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->maxAudioBitrate:I

    iget-boolean v15, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedAudioConstraintsIfNecessary:Z

    move-object/from16 v28, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedMimeTypeAdaptiveness:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedSampleRateAdaptiveness:Z

    move/from16 v17, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredTextLanguage:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->selectUndeterminedTextLanguage:Z

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->disabledTextTrackSelectionFlags:I

    move/from16 v20, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->forceLowestBitrate:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->forceHighestSupportedBitrate:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    move/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingAudioSessionId:I

    move/from16 v24, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    move-object/from16 v26, v1

    move-object/from16 v1, v28

    invoke-direct/range {v1 .. v26}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-object v27
.end method

.method public final clearSelectionOverrides()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;
    .registers 2

    .line 606
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-object p0

    .line 610
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-object p0
.end method

.method public final setRendererDisabled(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rendererIndex",
            "disabled"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_9

    return-object p0

    :cond_9
    if-eqz p2, :cond_12

    .line 525
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_17

    .line 527
    :cond_12
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_17
    return-object p0
.end method

.method public setSelectUndeterminedTextLanguage(Z)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectUndeterminedTextLanguage"
        }
    .end annotation

    .line 432
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->setSelectUndeterminedTextLanguage(Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setSelectUndeterminedTextLanguage(Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "selectUndeterminedTextLanguage"
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectUndeterminedTextLanguage(Z)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setSelectionOverride(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rendererIndex",
            "groups",
            "override"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_14

    .line 558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 559
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 561
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    return-object p0

    .line 565
    :cond_25
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
