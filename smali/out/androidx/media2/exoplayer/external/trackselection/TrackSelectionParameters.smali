.class public Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;


# instance fields
.field public final disabledTextTrackSelectionFlags:I

.field public final preferredAudioLanguage:Ljava/lang/String;

.field public final preferredTextLanguage:Ljava/lang/String;

.field public final selectUndeterminedTextLanguage:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 125
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->DEFAULT:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;

    .line 233
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, v0, v0, v1, v1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    .line 178
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "preferredAudioLanguage",
            "preferredTextLanguage",
            "selectUndeterminedTextLanguage",
            "disabledTextTrackSelectionFlags"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 168
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    .line 169
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    .line 170
    iput p4, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_37

    .line 196
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;

    .line 197
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    .line 199
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    if-ne v2, v3, :cond_35

    iget v2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    iget p1, p1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    if-ne v2, p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 208
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 210
    iget-object v3, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    if-nez v3, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 211
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 212
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 226
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/Util;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 230
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
