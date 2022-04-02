.class public Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field disabledTextTrackSelectionFlags:I

.field preferredAudioLanguage:Ljava/lang/String;

.field preferredTextLanguage:Ljava/lang/String;

.field selectUndeterminedTextLanguage:Z


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialValues"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguage:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguage:Ljava/lang/String;

    .line 63
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    .line 64
    iget p1, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->disabledTextTrackSelectionFlags:I

    return-void
.end method


# virtual methods
.method public setSelectUndeterminedTextLanguage(Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectUndeterminedTextLanguage"
        }
    .end annotation

    .line 97
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    return-object p0
.end method
