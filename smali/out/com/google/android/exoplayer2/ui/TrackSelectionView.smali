.class public Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.super Landroid/widget/LinearLayout;
.source "TrackSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;
    }
.end annotation


# instance fields
.field private allowAdaptiveSelections:Z

.field private allowMultipleOverrides:Z

.field private final componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

.field private final defaultView:Landroid/widget/CheckedTextView;

.field private final disableView:Landroid/widget/CheckedTextView;

.field private final inflater:Landroid/view/LayoutInflater;

.field private isDisabled:Z

.field private listener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;

.field private mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private final overrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field private rendererIndex:I

.field private final selectableItemBackgroundResourceId:I

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

.field private trackViews:[[Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 91
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setOrientation(I)V

    .line 93
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    const/4 p3, 0x0

    .line 96
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setSaveFromParentEnabled(Z)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, p2, [I

    const v2, 0x101030e

    aput v2, v1, p3

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    .line 106
    new-instance p1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Lcom/google/android/exoplayer2/ui/TrackSelectionView$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    .line 107
    new-instance p1, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    .line 108
    sget-object p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 111
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x109000f

    .line 113
    invoke-virtual {p1, v0, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    .line 114
    iget v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 115
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 116
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 117
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 118
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    .line 122
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/android/exoplayer2/ui/R$layout;->exo_list_divider:I

    invoke-virtual {p1, v1, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    .line 124
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    .line 126
    invoke-virtual {p1, v0, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    .line 127
    iget v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 128
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 129
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 130
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 131
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/view/View;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private static getTracksAdding([II)[I
    .registers 3

    .line 384
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 385
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput p1, p0, v0

    return-object p0
.end method

.method private static getTracksRemoving([II)[I
    .registers 8

    .line 390
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    .line 392
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v4, p0, v2

    if-eq v4, p1, :cond_13

    add-int/lit8 v5, v3, 0x1

    .line 394
    aput v4, v0, v3

    move v3, v5

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method private onClick(Landroid/view/View;)V
    .registers 4

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_8

    .line 304
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onDisableViewClicked()V

    goto :goto_13

    .line 305
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    if-ne p1, v0, :cond_10

    .line 306
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onDefaultViewClicked()V

    goto :goto_13

    .line 308
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->onTrackViewClicked(Landroid/view/View;)V

    .line 310
    :goto_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViewStates()V

    .line 311
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->listener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;

    if-eqz p1, :cond_25

    .line 312
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getIsDisabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getOverrides()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;->onTrackSelectionChanged(ZLjava/util/List;)V

    :cond_25
    return-void
.end method

.method private onDefaultViewClicked()V
    .registers 2

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private onDisableViewClicked()V
    .registers 2

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private onTrackViewClicked(Landroid/view/View;)V
    .registers 10

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 330
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 331
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 332
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 333
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    if-nez v3, :cond_49

    .line 336
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_3a

    .line 338
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 340
    :cond_3a
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v4, v4, [I

    aput v1, v4, v0

    invoke-direct {v3, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9f

    .line 343
    :cond_49
    iget v5, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    .line 344
    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 345
    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    .line 346
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->shouldEnableAdaptiveSelection(I)Z

    move-result v6

    if-nez v6, :cond_62

    .line 347
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->shouldEnableMultiGroupSelection()Z

    move-result v7

    if-eqz v7, :cond_60

    goto :goto_62

    :cond_60
    const/4 v7, 0x0

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v7, 0x1

    :goto_63
    if-eqz p1, :cond_7e

    if-eqz v7, :cond_7e

    if-ne v5, v4, :cond_6f

    .line 352
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_9f

    .line 354
    :cond_6f
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getTracksRemoving([II)[I

    move-result-object p1

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v1, v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9f

    :cond_7e
    if-nez p1, :cond_9f

    if-eqz v6, :cond_91

    .line 360
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getTracksAdding([II)[I

    move-result-object p1

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v1, v2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9f

    .line 364
    :cond_91
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v4, v4, [I

    aput v1, v4, v0

    invoke-direct {v3, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9f
    :goto_9f
    return-void
.end method

.method private shouldEnableAdaptiveSelection(I)Z
    .registers 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "mappedTrackInfo"
        }
    .end annotation

    .line 372
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 373
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-le v0, v1, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    .line 374
    invoke-virtual {v0, v3, p1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method private shouldEnableMultiGroupSelection()Z
    .registers 3

    .line 380
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowMultipleOverrides:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-le v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private updateViewStates()V
    .registers 8

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const/4 v0, 0x0

    .line 294
    :goto_1e
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    array-length v1, v1

    if-ge v0, v1, :cond_4b

    .line 295
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    const/4 v4, 0x0

    .line 296
    :goto_2c
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v6, v5, v0

    array-length v6, v6

    if-ge v4, v6, :cond_48

    .line 297
    aget-object v5, v5, v0

    aget-object v5, v5, v4

    if-eqz v1, :cond_41

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->containsTrack(I)Z

    move-result v6

    if-eqz v6, :cond_41

    const/4 v6, 0x1

    goto :goto_42

    :cond_41
    const/4 v6, 0x0

    :goto_42
    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_4b
    return-void
.end method

.method private updateViews()V
    .registers 11

    .line 240
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    const/4 v2, 0x3

    if-lt v0, v2, :cond_f

    .line 241
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 244
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    return-void

    .line 250
    :cond_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 256
    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v0, v0, [[Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    .line 257
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->shouldEnableMultiGroupSelection()Z

    move-result v0

    const/4 v3, 0x0

    .line 258
    :goto_3e
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v4, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_c7

    .line 259
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 260
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->shouldEnableAdaptiveSelection(I)Z

    move-result v5

    .line 261
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v7, v7, [Landroid/widget/CheckedTextView;

    aput-object v7, v6, v3

    const/4 v6, 0x0

    .line 262
    :goto_57
    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_c3

    if-nez v6, :cond_68

    .line 264
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/google/android/exoplayer2/ui/R$layout;->exo_list_divider:I

    invoke-virtual {v7, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    :cond_68
    if-nez v5, :cond_71

    if-eqz v0, :cond_6d

    goto :goto_71

    :cond_6d
    const v7, 0x109000f

    goto :goto_74

    :cond_71
    :goto_71
    const v7, 0x1090010

    .line 270
    :goto_74
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    .line 271
    invoke-virtual {v8, v7, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckedTextView;

    .line 272
    iget v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 273
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/android/exoplayer2/ui/TrackNameProvider;->getTrackName(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget v9, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->rendererIndex:I

    invoke-virtual {v8, v9, v3, v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_b1

    .line 276
    invoke-virtual {v7, v1}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 278
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->componentListener:Lcom/google/android/exoplayer2/ui/TrackSelectionView$ComponentListener;

    invoke-virtual {v7, v8}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b7

    .line 280
    :cond_b1
    invoke-virtual {v7, v2}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    .line 281
    invoke-virtual {v7, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 283
    :goto_b7
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v8, v8, v3

    aput-object v7, v8, v6

    .line 284
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    :cond_c3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3e

    .line 288
    :cond_c7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViewStates()V

    return-void
.end method


# virtual methods
.method public getIsDisabled()Z
    .registers 2

    .line 221
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->isDisabled:Z

    return v0
.end method

.method public getOverrides()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 230
    :goto_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 231
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    return-object v0
.end method

.method public setAllowAdaptiveSelections(Z)V
    .registers 3

    .line 145
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-eq v0, p1, :cond_9

    .line 146
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViews()V

    :cond_9
    return-void
.end method

.method public setAllowMultipleOverrides(Z)V
    .registers 3

    .line 158
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-eq v0, p1, :cond_25

    .line 159
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-nez p1, :cond_22

    .line 160
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_22

    .line 161
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_18
    if-lez p1, :cond_22

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->overrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_18

    .line 165
    :cond_22
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViews()V

    :cond_25
    return-void
.end method

.method public setShowDisableOption(Z)V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public setTrackNameProvider(Lcom/google/android/exoplayer2/ui/TrackNameProvider;)V
    .registers 2

    .line 185
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    .line 186
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->updateViews()V

    return-void
.end method
