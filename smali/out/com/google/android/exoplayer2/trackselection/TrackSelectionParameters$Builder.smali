.class public Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field disabledTextTrackSelectionFlags:I

.field preferredAudioLanguage:Ljava/lang/String;

.field preferredTextLanguage:Ljava/lang/String;

.field preferredTextRoleFlags:I

.field selectUndeterminedTextLanguage:Z


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguage:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    .line 65
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTextTrackSelectionFlags:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .registers 8

    .line 162
    new-instance v6, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguage:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    iget v5, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTextTrackSelectionFlags:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    return-object v6
.end method
