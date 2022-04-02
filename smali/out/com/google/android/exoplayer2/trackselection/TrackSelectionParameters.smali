.class public Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;


# instance fields
.field public final disabledTextTrackSelectionFlags:I

.field public final preferredAudioLanguage:Ljava/lang/String;

.field public final preferredTextLanguage:Ljava/lang/String;

.field public final preferredTextRoleFlags:I

.field public final selectUndeterminedTextLanguage:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 207
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 213
    sput-object v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 323
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextRoleFlags:I

    .line 270
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZI)V
    .registers 6

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 260
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    .line 261
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextRoleFlags:I

    .line 262
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    .line 263
    iput p5, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3d

    .line 288
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 289
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    .line 290
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextRoleFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextRoleFlags:I

    if-ne v2, v3, :cond_3b

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    if-ne v2, v3, :cond_3b

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    if-ne v2, p1, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

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

    .line 300
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    if-nez v3, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 301
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextRoleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 302
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 303
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 316
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextRoleFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 320
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
