.class public final Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation


# instance fields
.field public final length:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final rendererCount:I

.field private final rendererFormatSupports:[[[I

.field private final rendererMixedMimeTypeAdaptiveSupports:[I

.field private final rendererTrackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private final rendererTrackTypes:[I

.field private final unmappedTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;


# direct methods
.method constructor <init>([I[Landroidx/media2/exoplayer/external/source/TrackGroupArray;[I[[[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rendererTrackTypes",
            "rendererTrackGroups",
            "rendererMixedMimeTypeAdaptiveSupports",
            "rendererFormatSupports",
            "unmappedTrackGroups"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    .line 120
    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 121
    iput-object p4, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    .line 122
    iput-object p3, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    .line 123
    iput-object p5, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 124
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    .line 125
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    return-void
.end method


# virtual methods
.method public getRendererCount()I
    .registers 2

    .line 130
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    return v0
.end method

.method public getRendererType(I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rendererIndex"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget p1, v0, p1

    return p1
.end method

.method public getTrackGroups(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rendererIndex"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object p1, v0, p1

    return-object p1
.end method
