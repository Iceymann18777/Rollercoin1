.class public Landroidx/media2/common/MediaParcelUtils;
.super Ljava/lang/Object;
.source "MediaParcelUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;
    }
.end annotation


# direct methods
.method public static fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ")TT;"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p0

    return-object p0
.end method

.method public static toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroidx/versionedparcelable/ParcelImpl;
    .registers 2

    .line 48
    instance-of v0, p0, Landroidx/media2/common/MediaItem;

    if-eqz v0, :cond_c

    .line 49
    new-instance v0, Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;

    check-cast p0, Landroidx/media2/common/MediaItem;

    invoke-direct {v0, p0}, Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;-><init>(Landroidx/media2/common/MediaItem;)V

    return-object v0

    .line 51
    :cond_c
    invoke-static {p0}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroidx/versionedparcelable/ParcelImpl;

    return-object p0
.end method
