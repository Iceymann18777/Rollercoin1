.class public final Landroidx/media2/session/PercentageRatingParcelizer;
.super Ljava/lang/Object;
.source "PercentageRatingParcelizer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/session/PercentageRating;
    .registers 4

    .line 14
    new-instance v0, Landroidx/media2/session/PercentageRating;

    invoke-direct {v0}, Landroidx/media2/session/PercentageRating;-><init>()V

    .line 15
    iget v1, v0, Landroidx/media2/session/PercentageRating;->mPercent:F

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readFloat(FI)F

    move-result p0

    iput p0, v0, Landroidx/media2/session/PercentageRating;->mPercent:F

    return-object v0
.end method

.method public static write(Landroidx/media2/session/PercentageRating;Landroidx/versionedparcelable/VersionedParcel;)V
    .registers 3

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 22
    iget p0, p0, Landroidx/media2/session/PercentageRating;->mPercent:F

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(FI)V

    return-void
.end method
