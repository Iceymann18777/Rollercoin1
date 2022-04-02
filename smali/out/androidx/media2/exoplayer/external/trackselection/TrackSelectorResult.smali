.class public final Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
.super Ljava/lang/Object;
.source "TrackSelectorResult.java"


# instance fields
.field public final info:Ljava/lang/Object;

.field public final length:I

.field public final rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

.field public final selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/TrackSelection;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rendererConfigurations",
            "selections",
            "info"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    .line 63
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;-><init>([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 64
    iput-object p3, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    .line 65
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->length:I

    return-void
.end method


# virtual methods
.method public isEquivalent(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 81
    iget-object v1, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    iget v1, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->length:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    iget v2, v2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->length:I

    if-eq v1, v2, :cond_e

    goto :goto_21

    :cond_e
    const/4 v1, 0x0

    .line 84
    :goto_f
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    iget v2, v2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->length:I

    if-ge v1, v2, :cond_1f

    .line 85
    invoke-virtual {p0, p1, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;I)Z

    move-result v2

    if-nez v2, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    const/4 p1, 0x1

    return p1

    :cond_21
    :goto_21
    return v0
.end method

.method public isEquivalent(Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "index"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 107
    :cond_4
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    .line 108
    invoke-virtual {v1, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v1

    iget-object p1, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->selections:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;->get(I)Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method public isRendererEnabled(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object p1, v0, p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
